part of '../tdapi.dart';

class GetPassportAuthorizationForm extends TdFunction {
  int botUserId;
  String scope;
  String publicKey;
  String nonce;
  dynamic extra;

  /// Returns a Telegram Passport authorization form for sharing data with a service. 
  /// [botUserId] User identifier of the service's bot . 
  /// [scope] Telegram Passport element types requested by the service . 
  /// [publicKey] Service's public_key . 
  /// [nonce] Authorization form nonce provided by the service
  GetPassportAuthorizationForm({this.botUserId,
    this.scope,
    this.publicKey,
    this.nonce});

  /// Parse from a json
  GetPassportAuthorizationForm.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": this.botUserId,
      "scope": this.scope,
      "public_key": this.publicKey,
      "nonce": this.nonce,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPassportAuthorizationForm';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}