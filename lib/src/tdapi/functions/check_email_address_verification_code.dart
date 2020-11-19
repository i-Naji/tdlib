part of '../tdapi.dart';

class CheckEmailAddressVerificationCode extends TdFunction {
  /// Checks the email address verification code for Telegram Passport
  CheckEmailAddressVerificationCode({this.code});

  /// [code] Verification code
  String code;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CheckEmailAddressVerificationCode.fromJson(Map<String, dynamic> json);

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
