part of '../tdapi.dart';

class RequestAuthenticationPasswordRecovery extends TdFunction {

  /// Requests to send a password recovery code to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword
  const RequestAuthenticationPasswordRecovery();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  RequestAuthenticationPasswordRecovery copyWith() => const RequestAuthenticationPasswordRecovery();

  static const CONSTRUCTOR = 'requestAuthenticationPasswordRecovery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
