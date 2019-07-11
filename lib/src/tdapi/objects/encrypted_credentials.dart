part of '../tdapi.dart';

class EncryptedCredentials implements TLObject {
  String data;
  String hash;
  String secret;

  /// Contains encrypted Telegram Passport data credentials.
  ///[data] The encrypted credentials .
  /// [hash] The decrypted data hash .
  /// [secret] Secret for data decryption, encrypted with the service's public key
  EncryptedCredentials({this.data, this.hash, this.secret});

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
      "secret": this.secret
    };
  }

  static const String CONSTRUCTOR = "encryptedCredentials";

  @override
  String getConstructor() => CONSTRUCTOR;
}
