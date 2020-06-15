part of '../tdapi.dart';

class ChangePhoneNumber extends TdFunction {
  String phoneNumber;
  PhoneNumberAuthenticationSettings settings;
  dynamic extra;

  /// Changes the phone number of the user and sends an authentication code to the user's new phone number. On success, returns information about the sent code. 
  /// [phoneNumber] The new phone number of the user in international format. 
  /// [settings] Settings for the authentication of the user's phone number
  ChangePhoneNumber({this.phoneNumber,
    this.settings});

  /// Parse from a json
  ChangePhoneNumber.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
      "settings": this.settings.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'changePhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}