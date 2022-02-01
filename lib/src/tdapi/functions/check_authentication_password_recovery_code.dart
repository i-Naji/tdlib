part of '../tdapi.dart';

class CheckAuthenticationPasswordRecoveryCode extends TdFunction {

  /// Checks whether a password recovery code sent to an email address is valid. Works only when the current authorization state is authorizationStateWaitPassword
  const CheckAuthenticationPasswordRecoveryCode({
    required this.recoveryCode,
  });
  
  /// [recoveryCode] Recovery code to check
  final String recoveryCode;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "recovery_code": recoveryCode,
      "@extra": extra,
    };
  }
  
  CheckAuthenticationPasswordRecoveryCode copyWith({
    String? recoveryCode,
  }) => CheckAuthenticationPasswordRecoveryCode(
    recoveryCode: recoveryCode ?? this.recoveryCode,
  );

  static const CONSTRUCTOR = 'checkAuthenticationPasswordRecoveryCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
