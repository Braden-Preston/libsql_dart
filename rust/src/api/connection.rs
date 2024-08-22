use super::{
    libsql::{DATABASE_REGISTRY, STATEMENT_REGISTRY},
    statement::LibsqlStatement,
};
use crate::utils::{
    parameters::Parameters,
    result::{BatchResult, ExecuteResult, PrepareResult, QueryResult, SyncResult},
};
use uuid::Uuid;

pub struct LibsqlConnection {
    pub db_id: String,
}

impl LibsqlConnection {
    pub async fn sync(&self) -> SyncResult {
        return match DATABASE_REGISTRY.lock().await.get(&self.db_id) {
            Some((db, _)) => match db.sync().await {
                Ok(_) => SyncResult {
                    error_message: None,
                },
                Err(err) => SyncResult {
                    error_message: Some(err.to_string()),
                },
            },
            _ => SyncResult {
                error_message: Some("DB is not initialized".to_string()),
            },
        };
    }

    pub async fn query(&self, sql: String, parameters: Option<Parameters>) -> QueryResult {
        let prepared = self.prepare(sql).await;
        if prepared.error_message.is_some() {
            return QueryResult {
                rows: vec![],
                columns: vec![],
                rows_affected: 0,
                last_insert_rowid: 0,
                error_message: prepared.error_message,
            };
        }
        prepared.statement.unwrap().query(parameters).await
    }

    pub async fn execute(&self, sql: String, parameters: Option<Parameters>) -> ExecuteResult {
        let prepared = self.prepare(sql).await;
        if prepared.error_message.is_some() {
            return ExecuteResult {
                rows_affected: 0,
                error_message: prepared.error_message,
            };
        }
        prepared.statement.unwrap().execute(parameters).await
    }

    pub async fn prepare(&self, sql: String) -> PrepareResult {
        return match DATABASE_REGISTRY.lock().await.get(&self.db_id) {
            Some((_, conn)) => match conn.prepare(&sql).await {
                Ok(statement) => {
                    let statement_id = Uuid::new_v4().to_string();
                    STATEMENT_REGISTRY
                        .lock()
                        .await
                        .insert(statement_id.clone(), statement);
                    PrepareResult {
                        statement: Some(LibsqlStatement { statement_id }),
                        error_message: None,
                    }
                }
                Err(err) => PrepareResult {
                    statement: None,
                    error_message: Some(err.to_string()),
                },
            },
            _ => PrepareResult {
                statement: None,
                error_message: Some("DB is not initialized".to_string()),
            },
        };
    }

    pub async fn batch(&self, sql: String) -> BatchResult {
        return match DATABASE_REGISTRY.lock().await.get(&self.db_id) {
            Some((_, conn)) => match conn.execute_batch(&sql).await {
                Ok(_) => BatchResult {
                    error_message: None,
                },
                Err(err) => BatchResult {
                    error_message: Some(err.to_string()),
                },
            },
            _ => BatchResult {
                error_message: Some("DB is not initialized".to_string()),
            },
        };
    }

    pub async fn close(&self) {
        match DATABASE_REGISTRY.lock().await.remove(&self.db_id) {
            Some(_) => {}
            _ => {}
        };
    }
}
