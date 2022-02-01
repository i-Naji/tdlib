part of '../tdapi.dart';

class GetPassportAuthorizationForm extends TdFunction {

  /// Returns a Telegram Passport authorization form for sharing data with a service
  const GetPassportAuthorizationForm({
    required this.botUserId,
    required this.scope,
    required this.publicKey,
    required this.nonce,
  });
  
  /// [botUserId] User identifier of the service's bot 
  final int botUserId;

  /// [scope] Telegram Passport element types requested by the service 
  final String scope;

  /// [publicKey] Service's public key 
  final String publicKey;

  /// [nonce] Unique request identifier provided by the service
  final String nonce;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "scope": scope,
      "public_key": publicKey,
      "nonce": nonce,
      "@extra": extra,
    };
  }
  
  GetPassportAuthorizationForm copyWith({
    int? botUserId,
    String? scope,
    String? publicKey,
    String? nonce,
  }) => GetPassportAuthorizationForm(
    botUserId: botUserId ?? this.botUserId,
    scope: scope ?? this.scope,
    publicKey: publicKey ?? this.publicKey,
    nonce: nonce ?? this.nonce,
  );

  static const CONSTRUCTOR = 'getPassportAuthorizationForm';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
