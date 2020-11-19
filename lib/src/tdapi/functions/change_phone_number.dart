part of '../tdapi.dart';

class ChangePhoneNumber extends TdFunction {
  /// Changes the phone number of the user and sends an authentication code to the user's new phone number. On success, returns information about the sent code
  ChangePhoneNumber({this.phoneNumber, this.settings});

  /// [phoneNumber] The new phone number of the user in international format
  String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number
  PhoneNumberAuthenticationSettings settings;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ChangePhoneNumber.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
      "settings": this.settings == null ? null : this.settings.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'changePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}
