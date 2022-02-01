part of '../tdapi.dart';

class SetDatabaseEncryptionKey extends TdFunction {

  /// Changes the database encryption key. Usually the encryption key is never changed and is stored in some OS keychain
  const SetDatabaseEncryptionKey({
    required this.newEncryptionKey,
  });
  
  /// [newEncryptionKey] New encryption key
  final String newEncryptionKey;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "new_encryption_key": newEncryptionKey,
      "@extra": extra,
    };
  }
  
  SetDatabaseEncryptionKey copyWith({
    String? newEncryptionKey,
  }) => SetDatabaseEncryptionKey(
    newEncryptionKey: newEncryptionKey ?? this.newEncryptionKey,
  );

  static const CONSTRUCTOR = 'setDatabaseEncryptionKey';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
