part of '../tdapi.dart';

class CheckChangePhoneNumberCode extends TLFunction {
  String code;
  dynamic extra;

  /// Checks the authentication code sent to confirm a new phone number of the user.
  ///[code] Verification code received by SMS, phone call or flash call
  CheckChangePhoneNumberCode({this.code});

  /// Parse from a json
  CheckChangePhoneNumberCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "code": this.code, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "checkChangePhoneNumberCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}
