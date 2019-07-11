part of '../tdapi.dart';

class SendPhoneNumberVerificationCode extends TLFunction {
  String phoneNumber;
  bool allowFlashCall;
  bool isCurrentPhoneNumber;
  dynamic extra;

  /// Sends a code to verify a phone number to be added to a user's Telegram Passport.
  ///[phoneNumber] The phone number of the user, in international format .
  /// [allowFlashCall] Pass true if the authentication code may be sent via flash call to the specified phone number .
  /// [isCurrentPhoneNumber] Pass true if the phone number is used on the current device. Ignored if allow_flash_call is false
  SendPhoneNumberVerificationCode(
      {this.phoneNumber, this.allowFlashCall, this.isCurrentPhoneNumber});

  /// Parse from a json
  SendPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json);

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

  static const String CONSTRUCTOR = "sendPhoneNumberVerificationCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}
