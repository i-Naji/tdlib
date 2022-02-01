part of '../tdapi.dart';

class ResendEmailAddressVerificationCode extends TdFunction {

  /// Re-sends the code to verify an email address to be added to a user's Telegram Passport
  const ResendEmailAddressVerificationCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  ResendEmailAddressVerificationCode copyWith() => const ResendEmailAddressVerificationCode();

  static const CONSTRUCTOR = 'resendEmailAddressVerificationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
