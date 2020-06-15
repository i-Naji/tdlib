part of '../tdapi.dart';

class SetDatabaseEncryptionKey extends TdFunction {
  String newEncryptionKey;
  dynamic extra;

  /// Changes the database encryption key. Usually the encryption key is never changed and is stored in some OS keychain. 
  /// [newEncryptionKey] New encryption key
  SetDatabaseEncryptionKey({this.newEncryptionKey});

  /// Parse from a json
  SetDatabaseEncryptionKey.fromJson(Map<String, dynamic> json) ;

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