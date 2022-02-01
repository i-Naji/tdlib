part of '../tdapi.dart';

class ResetPassword extends TdFunction {

  /// Removes 2-step verification password without previous password and access to recovery email address. The password can't be reset immediately and the request needs to be repeated after the specified time
  const ResetPassword();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  ResetPassword copyWith() => const ResetPassword();

  static const CONSTRUCTOR = 'resetPassword';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
