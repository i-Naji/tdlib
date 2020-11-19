part of '../tdapi.dart';

class EncryptedCredentials extends TdObject {
  /// Contains encrypted Telegram Passport data credentials
  EncryptedCredentials({this.data, this.hash, this.secret});

  /// [data] The encrypted credentials
  String data;

  /// [hash] The decrypted data hash
  String hash;

  /// [secret] Secret for data decryption, encrypted with the service's public key
  String secret;

  /// Parse from a json
  EncryptedCredentials.fromJson(Map<String, dynamic> json) {
    this.data = json['data'];
    this.hash = json['hash'];
    this.secret = json['secret'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "data": this.data,
      "hash": this.hash,
      "secret": this.secret,
    };
  }

  static const CONSTRUCTOR = 'encryptedCredentials';

  @override
  String getConstructor() => CONSTRUCTOR;
}
