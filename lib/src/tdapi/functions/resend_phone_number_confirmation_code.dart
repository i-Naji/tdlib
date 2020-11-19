part of '../tdapi.dart';

class ResendPhoneNumberConfirmationCode extends TdFunction {
  /// Resends phone number confirmation code
  ResendPhoneNumberConfirmationCode();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ResendPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'resendPhoneNumberConfirmationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
