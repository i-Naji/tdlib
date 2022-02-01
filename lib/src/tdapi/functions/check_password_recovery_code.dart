part of '../tdapi.dart';

class CheckPasswordRecoveryCode extends TdFunction {

  /// Checks whether a 2-step verification password recovery code sent to an email address is valid
  const CheckPasswordRecoveryCode({
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
  
  CheckPasswordRecoveryCode copyWith({
    String? recoveryCode,
  }) => CheckPasswordRecoveryCode(
    recoveryCode: recoveryCode ?? this.recoveryCode,
  );

  static const CONSTRUCTOR = 'checkPasswordRecoveryCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
