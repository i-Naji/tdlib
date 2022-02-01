part of '../tdapi.dart';

class CheckDatabaseEncryptionKey extends TdFunction {

  /// Checks the database encryption key for correctness. Works only when the current authorization state is authorizationStateWaitEncryptionKey
  const CheckDatabaseEncryptionKey({
    required this.encryptionKey,
  });
  
  /// [encryptionKey] Encryption key to check or set up
  final String encryptionKey;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "encryption_key": encryptionKey,
      "@extra": extra,
    };
  }
  
  CheckDatabaseEncryptionKey copyWith({
    String? encryptionKey,
  }) => CheckDatabaseEncryptionKey(
    encryptionKey: encryptionKey ?? this.encryptionKey,
  );

  static const CONSTRUCTOR = 'checkDatabaseEncryptionKey';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
