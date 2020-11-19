part of '../tdapi.dart';

class SetDatabaseEncryptionKey extends TdFunction {
  /// Changes the database encryption key. Usually the encryption key is never changed and is stored in some OS keychain
  SetDatabaseEncryptionKey({this.newEncryptionKey});

  /// [newEncryptionKey] New encryption key
  String newEncryptionKey;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetDatabaseEncryptionKey.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "new_encryption_key": this.newEncryptionKey,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setDatabaseEncryptionKey';

  @override
  String getConstructor() => CONSTRUCTOR;
}
