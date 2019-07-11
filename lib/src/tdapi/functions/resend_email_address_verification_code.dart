part of '../tdapi.dart';

class ResendEmailAddressVerificationCode extends TLFunction {
  dynamic extra;

  /// Re-sends the code to verify an email address to be added to a user's Telegram Passport.
  ///
  ResendEmailAddressVerificationCode();

  /// Parse from a json
  ResendEmailAddressVerificationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "resendEmailAddressVerificationCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}
