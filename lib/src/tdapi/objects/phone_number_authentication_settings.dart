part of '../tdapi.dart';

class PhoneNumberAuthenticationSettings extends TdObject {
  bool allowFlashCall;
  bool isCurrentPhoneNumber;
  bool allowSmsRetrieverApi;

  /// Contains settings for the authentication of the user's phone number. 
  /// [allowFlashCall] Pass true if the authentication code may be sent via flash call to the specified phone number. 
  /// [isCurrentPhoneNumber] Pass true if the authenticated phone number is used on the current device. 
  /// [allowSmsRetrieverApi] For official applications only. True, if the app can use Android SMS Retriever API (requires Google Play Services
  PhoneNumberAuthenticationSettings({this.allowFlashCall,
    this.isCurrentPhoneNumber,
    this.allowSmsRetrieverApi});

  /// Parse from a json
  PhoneNumberAuthenticationSettings.fromJson(Map<String, dynamic> json)  {
    this.allowFlashCall = json['allow_flash_call'];
    this.isCurrentPhoneNumber = json['is_current_phone_number'];
    this.allowSmsRetrieverApi = json['allow_sms_retriever_api'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "allow_flash_call": this.allowFlashCall,
      "is_current_phone_number": this.isCurrentPhoneNumber,
      "allow_sms_retriever_api": this.allowSmsRetrieverApi,
    };
  }

  static const CONSTRUCTOR = 'phoneNumberAuthenticationSettings';
}