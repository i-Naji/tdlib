part of '../tdapi.dart';

class SendPhoneNumberVerificationCode extends TdFunction {

  /// Sends a code to verify a phone number to be added to a user's Telegram Passport
  const SendPhoneNumberVerificationCode({
    required this.phoneNumber,
    this.settings,
  });
  
  /// [phoneNumber] The phone number of the user, in international format
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number; pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": phoneNumber,
      "settings": settings?.toJson(),
      "@extra": extra,
    };
  }
  
  SendPhoneNumberVerificationCode copyWith({
    String? phoneNumber,
    PhoneNumberAuthenticationSettings? settings,
  }) => SendPhoneNumberVerificationCode(
    phoneNumber: phoneNumber ?? this.phoneNumber,
    settings: settings ?? this.settings,
  );

  static const CONSTRUCTOR = 'sendPhoneNumberVerificationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
