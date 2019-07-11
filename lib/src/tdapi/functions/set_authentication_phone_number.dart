part of '../tdapi.dart';

class SetAuthenticationPhoneNumber extends TLFunction {
  String phoneNumber;
  bool allowFlashCall;
  bool isCurrentPhoneNumber;
  dynamic extra;

  /// Sets the phone number of the user and sends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitPhoneNumber.
  ///[phoneNumber] The phone number of the user, in international format .
  /// [allowFlashCall] Pass true if the authentication code may be sent via flash call to the specified phone number .
  /// [isCurrentPhoneNumber] Pass true if the phone number is used on the current device. Ignored if allow_flash_call is false
  SetAuthenticationPhoneNumber(
      {this.phoneNumber, this.allowFlashCall, this.isCurrentPhoneNumber});

  /// Parse from a json
  SetAuthenticationPhoneNumber.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
      "allow_flash_call": this.allowFlashCall,
      "is_current_phone_number": this.isCurrentPhoneNumber,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "setAuthenticationPhoneNumber";

  @override
  String getConstructor() => CONSTRUCTOR;
}
