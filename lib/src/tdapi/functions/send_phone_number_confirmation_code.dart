part of '../tdapi.dart';

class SendPhoneNumberConfirmationCode extends TdFunction {
  /// Sends phone number confirmation code. Should be called when user presses "https://t.me/confirmphone?phone=*******&hash=**********" or "tg://confirmphone?phone=*******&hash=**********" link
  SendPhoneNumberConfirmationCode({this.hash, this.phoneNumber, this.settings});

  /// [hash] Value of the "hash" parameter from the link
  String hash;

  /// [phoneNumber] Value of the "phone" parameter from the link
  String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number
  PhoneNumberAuthenticationSettings settings;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SendPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "hash": this.hash,
      "phone_number": this.phoneNumber,
      "settings": this.settings == null ? null : this.settings.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendPhoneNumberConfirmationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
