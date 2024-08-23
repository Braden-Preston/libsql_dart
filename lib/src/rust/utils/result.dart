// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.2.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../api/connection.dart';
import '../api/statement.dart';
import '../api/transaction.dart';
import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'return_value.dart';

class BatchResult {
  final String? errorMessage;

  const BatchResult({
    this.errorMessage,
  });

  @override
  int get hashCode => errorMessage.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BatchResult &&
          runtimeType == other.runtimeType &&
          errorMessage == other.errorMessage;
}

class ConnectResult {
  final LibsqlConnection? connection;
  final String? errorMessage;

  const ConnectResult({
    this.connection,
    this.errorMessage,
  });

  @override
  int get hashCode => connection.hashCode ^ errorMessage.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConnectResult &&
          runtimeType == other.runtimeType &&
          connection == other.connection &&
          errorMessage == other.errorMessage;
}

class ExecuteResult {
  final BigInt rowsAffected;
  final String? errorMessage;

  const ExecuteResult({
    required this.rowsAffected,
    this.errorMessage,
  });

  @override
  int get hashCode => rowsAffected.hashCode ^ errorMessage.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExecuteResult &&
          runtimeType == other.runtimeType &&
          rowsAffected == other.rowsAffected &&
          errorMessage == other.errorMessage;
}

class PrepareResult {
  final LibsqlStatement? statement;
  final String? errorMessage;

  const PrepareResult({
    this.statement,
    this.errorMessage,
  });

  @override
  int get hashCode => statement.hashCode ^ errorMessage.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PrepareResult &&
          runtimeType == other.runtimeType &&
          statement == other.statement &&
          errorMessage == other.errorMessage;
}

class QueryResult {
  final List<Map<String, ReturnValue>> rows;
  final List<String> columns;
  final BigInt rowsAffected;
  final PlatformInt64 lastInsertRowid;
  final String? errorMessage;

  const QueryResult({
    required this.rows,
    required this.columns,
    required this.rowsAffected,
    required this.lastInsertRowid,
    this.errorMessage,
  });

  @override
  int get hashCode =>
      rows.hashCode ^
      columns.hashCode ^
      rowsAffected.hashCode ^
      lastInsertRowid.hashCode ^
      errorMessage.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QueryResult &&
          runtimeType == other.runtimeType &&
          rows == other.rows &&
          columns == other.columns &&
          rowsAffected == other.rowsAffected &&
          lastInsertRowid == other.lastInsertRowid &&
          errorMessage == other.errorMessage;
}

class SyncResult {
  final String? errorMessage;

  const SyncResult({
    this.errorMessage,
  });

  @override
  int get hashCode => errorMessage.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SyncResult &&
          runtimeType == other.runtimeType &&
          errorMessage == other.errorMessage;
}

class TransactionCommitResult {
  final String? errorMessage;

  const TransactionCommitResult({
    this.errorMessage,
  });

  @override
  int get hashCode => errorMessage.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionCommitResult &&
          runtimeType == other.runtimeType &&
          errorMessage == other.errorMessage;
}

class TransactionResult {
  final LibsqlTransaction? transaction;
  final String? errorMessage;

  const TransactionResult({
    this.transaction,
    this.errorMessage,
  });

  @override
  int get hashCode => transaction.hashCode ^ errorMessage.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionResult &&
          runtimeType == other.runtimeType &&
          transaction == other.transaction &&
          errorMessage == other.errorMessage;
}

class TransactionRollbackResult {
  final String? errorMessage;

  const TransactionRollbackResult({
    this.errorMessage,
  });

  @override
  int get hashCode => errorMessage.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionRollbackResult &&
          runtimeType == other.runtimeType &&
          errorMessage == other.errorMessage;
}
