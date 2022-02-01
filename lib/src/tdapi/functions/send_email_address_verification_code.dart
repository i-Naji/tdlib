part of '../tdapi.dart';

class SendEmailAddressVerificationCode extends TdFunction {

  /// Sends a code to verify an email address to be added to a user's Telegram Passport
  const SendEmailAddressVerificationCode({
    required this.emailAddress,
  });
  
  /// [emailAddress] Email address
  final String emailAddress;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "email_address": emailAddress,
      "@extra": extra,
    };
  }
  
  SendEmailAddressVerificationCode copyWith({
    String? emailAddress,
  }) => SendEmailAddressVerificationCode(
    emailAddress: emailAddress ?? this.emailAddress,
  );

  static const CONSTRUCTOR = 'sendEmailAddressVerificationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
