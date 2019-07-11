part of '../tdapi.dart';

class SendPhoneNumberConfirmationCode extends TLFunction {
  String hash;
  String phoneNumber;
  bool allowFlashCall;
  bool isCurrentPhoneNumber;
  dynamic extra;

  /// Sends phone number confirmation code. Should be called when user presses "https.
  ///[phoneNumber] Value of the "phone" parameter from the link .
  /// [allowFlashCall] Pass true if the authentication code may be sent via flash call to the specified phone number .
  /// [isCurrentPhoneNumber] Pass true if the phone number is used on the current device. Ignored if allow_flash_call is false
  SendPhoneNumberConfirmationCode(
      {this.hash,
      this.phoneNumber,
      this.allowFlashCall,
      this.isCurrentPhoneNumber});

  /// Parse from a json
  SendPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "hash": this.hash,
      "phone_number": this.phoneNumber,
      "allow_flash_call": this.allowFlashCall,
      "is_current_phone_number": this.isCurrentPhoneNumber,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "sendPhoneNumberConfirmationCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}
