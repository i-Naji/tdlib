part of '../tdapi.dart';

class RecoverAuthenticationPassword extends TdFunction {
  /// Recovers the password with a password recovery code sent to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword
  RecoverAuthenticationPassword({this.recoveryCode});

  /// [recoveryCode] Recovery code to check
  String recoveryCode;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  RecoverAuthenticationPassword.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "recovery_code": this.recoveryCode,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'recoverAuthenticationPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}
