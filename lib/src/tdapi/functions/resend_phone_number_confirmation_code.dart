part of '../tdapi.dart';

class ResendPhoneNumberConfirmationCode extends TdFunction {

  /// Resends phone number confirmation code
  const ResendPhoneNumberConfirmationCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  ResendPhoneNumberConfirmationCode copyWith() => const ResendPhoneNumberConfirmationCode();

  static const CONSTRUCTOR = 'resendPhoneNumberConfirmationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
