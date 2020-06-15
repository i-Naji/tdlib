part of '../tdapi.dart';

class CheckEmailAddressVerificationCode extends TdFunction {
  String code;
  dynamic extra;

  /// Checks the email address verification code for Telegram Passport. 
  /// [code] Verification code
  CheckEmailAddressVerificationCode({this.code});

  /// Parse from a json
  CheckEmailAddressVerificationCode.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "code": this.code,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'checkEmailAddressVerificationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}