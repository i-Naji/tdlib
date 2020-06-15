part of '../tdapi.dart';

class CheckAuthenticationCode extends TdFunction {
  String code;
  dynamic extra;

  /// Checks the authentication code. Works only when the current authorization state is authorizationStateWaitCode. 
  /// [code] The verification code received via SMS, Telegram message, phone call, or flash call
  CheckAuthenticationCode({this.code});

  /// Parse from a json
  CheckAuthenticationCode.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "code": this.code,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'checkAuthenticationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}