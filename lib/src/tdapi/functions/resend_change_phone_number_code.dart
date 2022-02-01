part of '../tdapi.dart';

class ResendChangePhoneNumberCode extends TdFunction {

  /// Re-sends the authentication code sent to confirm a new phone number for the current user. Works only if the previously received authenticationCodeInfo next_code_type was not null and the server-specified timeout has passed
  const ResendChangePhoneNumberCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  ResendChangePhoneNumberCode copyWith() => const ResendChangePhoneNumberCode();

  static const CONSTRUCTOR = 'resendChangePhoneNumberCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
