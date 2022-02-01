part of '../tdapi.dart';

class EncryptedCredentials extends TdObject {

  /// Contains encrypted Telegram Passport data credentials
  const EncryptedCredentials({
    required this.data,
    required this.hash,
    required this.secret,
  });
  
  /// [data] The encrypted credentials 
  final String data;

  /// [hash] The decrypted data hash 
  final String hash;

  /// [secret] Secret for data decryption, encrypted with the service's public key
  final String secret;
  
  /// Parse from a json
  factory EncryptedCredentials.fromJson(Map<String, dynamic> json) => EncryptedCredentials(
    data: json['data'],
    hash: json['hash'],
    secret: json['secret'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "data": data,
      "hash": hash,
      "secret": secret,
    };
  }
  
  EncryptedCredentials copyWith({
    String? data,
    String? hash,
    String? secret,
  }) => EncryptedCredentials(
    data: data ?? this.data,
    hash: hash ?? this.hash,
    secret: secret ?? this.secret,
  );

  static const CONSTRUCTOR = 'encryptedCredentials';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
