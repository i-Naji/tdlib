part of '../tdapi.dart';

class SetAuthenticationPhoneNumber extends TdFunction {
  String phoneNumber;
  PhoneNumberAuthenticationSettings settings;
  dynamic extra;

  /// Sets the phone number of the user and sends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitPhoneNumber,. or if there is no pending authentication query and the current authorization state is authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword. 
  /// [phoneNumber] The phone number of the user, in international format. 
  /// [settings] Settings for the authentication of the user's phone number
  SetAuthenticationPhoneNumber({this.phoneNumber,
    this.settings});

  /// Parse from a json
  SetAuthenticationPhoneNumber.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
      "settings": this.settings.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setAuthenticationPhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}