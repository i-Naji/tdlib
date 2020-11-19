part of '../tdapi.dart';

class ResendEmailAddressVerificationCode extends TdFunction {
  /// Re-sends the code to verify an email address to be added to a user's Telegram Passport
  ResendEmailAddressVerificationCode();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ResendEmailAddressVerificationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'resendEmailAddressVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
