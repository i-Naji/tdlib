part of '../tdapi.dart';

class ChangePhoneNumber extends TLFunction {
  String phoneNumber;
  bool allowFlashCall;
  bool isCurrentPhoneNumber;
  dynamic extra;

  /// Changes the phone number of the user and sends an authentication code to the user's new phone number. On success, returns information about the sent code.
  ///[phoneNumber] The new phone number of the user in international format .
  /// [allowFlashCall] Pass true if the code can be sent via flash call to the specified phone number .
  /// [isCurrentPhoneNumber] Pass true if the phone number is used on the current device. Ignored if allow_flash_call is false
  ChangePhoneNumber(
      {this.phoneNumber, this.allowFlashCall, this.isCurrentPhoneNumber});

  /// Parse from a json
  ChangePhoneNumber.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'phone_number': this.phoneNumber,
      'allow_flash_call': this.allowFlashCall,
      'is_current_phone_number': this.isCurrentPhoneNumber,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'changePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}
