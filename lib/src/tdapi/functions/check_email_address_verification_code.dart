part of '../tdapi.dart';

class CheckEmailAddressVerificationCode extends TdFunction {

  /// Checks the email address verification code for Telegram Passport
  const CheckEmailAddressVerificationCode({
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
  
  CheckEmailAddressVerificationCode copyWith({
    String? code,
  }) => CheckEmailAddressVerificationCode(
    code: code ?? this.code,
  );

  static const CONSTRUCTOR = 'checkEmailAddressVerificationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
