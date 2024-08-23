// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.2.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import '../utils/parameters.dart';
import '../utils/result.dart';
import '../utils/return_value.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

class LibsqlTransaction {
  final String transactionId;

  const LibsqlTransaction({
    required this.transactionId,
  });

  Future<TransactionCommitResult> commit() =>
      RustLib.instance.api.crateApiTransactionLibsqlTransactionCommit(
        that: this,
      );

  Future<ExecuteResult> execute(
          {required String sql, Parameters? parameters}) =>
      RustLib.instance.api.crateApiTransactionLibsqlTransactionExecute(
          that: this, sql: sql, parameters: parameters);

  Future<QueryResult> query({required String sql, Parameters? parameters}) =>
      RustLib.instance.api.crateApiTransactionLibsqlTransactionQuery(
          that: this, sql: sql, parameters: parameters);

  Future<TransactionRollbackResult> rollback() =>
      RustLib.instance.api.crateApiTransactionLibsqlTransactionRollback(
        that: this,
      );

  @override
  int get hashCode => transactionId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LibsqlTransaction &&
          runtimeType == other.runtimeType &&
          transactionId == other.transactionId;
}

enum LibsqlTransactionBehavior {
  deferred_,
  immediate,
  exclusive,
  readOnly,
  ;
}
