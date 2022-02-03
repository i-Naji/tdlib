part of '../tdapi.dart';

class SendPhoneNumberConfirmationCode extends TdFunction {

  /// Sends phone number confirmation code to handle links of the type internalLinkTypePhoneNumberConfirmation
  const SendPhoneNumberConfirmationCode({
    required this.hash,
    required this.phoneNumber,
    this.settings,
  });
  
  /// [hash] Hash value from the link 
  final String hash;

  /// [phoneNumber] Phone number value from the link 
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number; pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "hash": hash,
      "phone_number": phoneNumber,
      "settings": settings?.toJson(),
      "@extra": extra,
    };
  }
  
  SendPhoneNumberConfirmationCode copyWith({
    String? hash,
    String? phoneNumber,
    PhoneNumberAuthenticationSettings? settings,
  }) => SendPhoneNumberConfirmationCode(
    hash: hash ?? this.hash,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    settings: settings ?? this.settings,
  );

  static const CONSTRUCTOR = 'sendPhoneNumberConfirmationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
