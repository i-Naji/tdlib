part of '../tdapi.dart';

class ResetAuthenticationEmailAddress extends TdFunction {
  /// Resets the login email address. May return an error with a message "TASK_ALREADY_EXISTS" if reset is still pending.. Works only when the current authorization state is authorizationStateWaitEmailCode and authorization_state.can_reset_email_address == true
  const ResetAuthenticationEmailAddress();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  ResetAuthenticationEmailAddress copyWith() =>
      const ResetAuthenticationEmailAddress();

  static const CONSTRUCTOR = 'resetAuthenticationEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}
