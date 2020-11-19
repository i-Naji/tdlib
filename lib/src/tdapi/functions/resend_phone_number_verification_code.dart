part of '../tdapi.dart';

class ResendPhoneNumberVerificationCode extends TdFunction {
  /// Re-sends the code to verify a phone number to be added to a user's Telegram Passport
  ResendPhoneNumberVerificationCode();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ResendPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'resendPhoneNumberVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
