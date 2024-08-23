// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.2.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import '../utils/result.dart';
import 'connection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These types are ignored because they are not used by any `pub` functions: `DATABASE_REGISTRY`, `STATEMENT_REGISTRY`, `TRANSACTION_REGISTRY`
// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `deref`, `deref`, `deref`, `initialize`, `initialize`, `initialize`

Future<ConnectResult> connect({required ConnectArgs args}) =>
    RustLib.instance.api.crateApiLibsqlConnect(args: args);

class ConnectArgs {
  final String url;
  final String? authToken;
  final String? syncUrl;
  final BigInt? syncIntervalSeconds;
  final String? encryptionKey;
  final bool? readYourWrites;
  final LibsqlOpenFlags? openFlags;

  const ConnectArgs({
    required this.url,
    this.authToken,
    this.syncUrl,
    this.syncIntervalSeconds,
    this.encryptionKey,
    this.readYourWrites,
    this.openFlags,
  });

  @override
  int get hashCode =>
      url.hashCode ^
      authToken.hashCode ^
      syncUrl.hashCode ^
      syncIntervalSeconds.hashCode ^
      encryptionKey.hashCode ^
      readYourWrites.hashCode ^
      openFlags.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConnectArgs &&
          runtimeType == other.runtimeType &&
          url == other.url &&
          authToken == other.authToken &&
          syncUrl == other.syncUrl &&
          syncIntervalSeconds == other.syncIntervalSeconds &&
          encryptionKey == other.encryptionKey &&
          readYourWrites == other.readYourWrites &&
          openFlags == other.openFlags;
}

enum LibsqlOpenFlags {
  readOnly,
  readWrite,
  create,
  ;
}
