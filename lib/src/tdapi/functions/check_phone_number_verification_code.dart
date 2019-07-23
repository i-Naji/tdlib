part of '../tdapi.dart';

class CheckPhoneNumberVerificationCode extends TdFunction {
  String code;
  dynamic extra;

  /// Checks the phone number verification code for Telegram Passport.
  ///[code] Verification code
  CheckPhoneNumberVerificationCode({this.code});

  /// Parse from a json
  CheckPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "code": this.code, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "checkPhoneNumberVerificationCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}
