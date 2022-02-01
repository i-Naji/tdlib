part of '../tdapi.dart';

class ResendPhoneNumberVerificationCode extends TdFunction {

  /// Re-sends the code to verify a phone number to be added to a user's Telegram Passport
  const ResendPhoneNumberVerificationCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  ResendPhoneNumberVerificationCode copyWith() => const ResendPhoneNumberVerificationCode();

  static const CONSTRUCTOR = 'resendPhoneNumberVerificationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
