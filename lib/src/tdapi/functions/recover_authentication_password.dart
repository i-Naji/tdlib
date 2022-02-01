part of '../tdapi.dart';

class RecoverAuthenticationPassword extends TdFunction {

  /// Recovers the password with a password recovery code sent to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword
  const RecoverAuthenticationPassword({
    required this.recoveryCode,
    required this.newPassword,
    required this.newHint,
  });
  
  /// [recoveryCode] Recovery code to check
  final String recoveryCode;

  /// [newPassword] New password of the user; may be empty to remove the password 
  final String newPassword;

  /// [newHint] New password hint; may be empty
  final String newHint;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "recovery_code": recoveryCode,
      "new_password": newPassword,
      "new_hint": newHint,
      "@extra": extra,
    };
  }
  
  RecoverAuthenticationPassword copyWith({
    String? recoveryCode,
    String? newPassword,
    String? newHint,
  }) => RecoverAuthenticationPassword(
    recoveryCode: recoveryCode ?? this.recoveryCode,
    newPassword: newPassword ?? this.newPassword,
    newHint: newHint ?? this.newHint,
  );

  static const CONSTRUCTOR = 'recoverAuthenticationPassword';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
