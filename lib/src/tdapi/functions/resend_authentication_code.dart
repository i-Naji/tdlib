part of '../tdapi.dart';

class ResendAuthenticationCode extends TdFunction {
  /// Resends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitCode, the next_code_type of the result is not null and the server-specified timeout has passed,. or when the current authorization state is authorizationStateWaitEmailCode
  const ResendAuthenticationCode();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  ResendAuthenticationCode copyWith() => const ResendAuthenticationCode();

  static const CONSTRUCTOR = 'resendAuthenticationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
