part of '../tdapi.dart';

class RequestAuthenticationPasswordRecovery extends TdFunction {
  /// Requests to send a password recovery code to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword
  RequestAuthenticationPasswordRecovery();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  RequestAuthenticationPasswordRecovery.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'requestAuthenticationPasswordRecovery';

  @override
  String getConstructor() => CONSTRUCTOR;
}
