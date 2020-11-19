part of '../tdapi.dart';

class ResendAuthenticationCode extends TdFunction {
  /// Re-sends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitCode and the next_code_type of the result is not null
  ResendAuthenticationCode();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ResendAuthenticationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'resendAuthenticationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
