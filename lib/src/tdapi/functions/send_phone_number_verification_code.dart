part of '../tdapi.dart';

class SendPhoneNumberVerificationCode extends TdFunction {
  /// Sends a code to verify a phone number to be added to a user's Telegram Passport
  SendPhoneNumberVerificationCode({this.phoneNumber, this.settings});

  /// [phoneNumber] The phone number of the user, in international format
  String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number
  PhoneNumberAuthenticationSettings settings;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SendPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
      "settings": this.settings == null ? null : this.settings.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendPhoneNumberVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
