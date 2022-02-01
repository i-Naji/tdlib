part of '../tdapi.dart';

class RequestPasswordRecovery extends TdFunction {

  /// Requests to send a 2-step verification password recovery code to an email address that was previously set up
  const RequestPasswordRecovery();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  RequestPasswordRecovery copyWith() => const RequestPasswordRecovery();

  static const CONSTRUCTOR = 'requestPasswordRecovery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
