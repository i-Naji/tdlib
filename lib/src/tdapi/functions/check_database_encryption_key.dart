part of '../tdapi.dart';

class CheckDatabaseEncryptionKey extends TdFunction {
  String encryptionKey;
  dynamic extra;

  /// Checks the database encryption key for correctness. Works only when the current authorization state is authorizationStateWaitEncryptionKey.
  ///[encryptionKey] Encryption key to check or set up
  CheckDatabaseEncryptionKey({this.encryptionKey});

  /// Parse from a json
  CheckDatabaseEncryptionKey.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "encryption_key": this.encryptionKey,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "checkDatabaseEncryptionKey";

  @override
  String getConstructor() => CONSTRUCTOR;
}
