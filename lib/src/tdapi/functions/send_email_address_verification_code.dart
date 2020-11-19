part of '../tdapi.dart';

class SendEmailAddressVerificationCode extends TdFunction {
  /// Sends a code to verify an email address to be added to a user's Telegram Passport
  SendEmailAddressVerificationCode({this.emailAddress});

  /// [emailAddress] Email address
  String emailAddress;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SendEmailAddressVerificationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "email_address": this.emailAddress,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendEmailAddressVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
