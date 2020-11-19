part of '../tdapi.dart';

class CheckPhoneNumberVerificationCode extends TdFunction {
  /// Checks the phone number verification code for Telegram Passport
  CheckPhoneNumberVerificationCode({this.code});

  /// [code] Verification code
  String code;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CheckPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "code": this.code,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'checkPhoneNumberVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
