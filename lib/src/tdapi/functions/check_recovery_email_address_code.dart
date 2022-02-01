part of '../tdapi.dart';

class CheckRecoveryEmailAddressCode extends TdFunction {

  /// Checks the 2-step verification recovery email address verification code
  const CheckRecoveryEmailAddressCode({
    required this.code,
  });
  
  /// [code] Verification code to check
  final String code;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "code": code,
      "@extra": extra,
    };
  }
  
  CheckRecoveryEmailAddressCode copyWith({
    String? code,
  }) => CheckRecoveryEmailAddressCode(
    code: code ?? this.code,
  );

  static const CONSTRUCTOR = 'checkRecoveryEmailAddressCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
