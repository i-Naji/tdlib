part of '../tdapi.dart';

class RecoverPassword extends TdFunction {

  /// Recovers the 2-step verification password using a recovery code sent to an email address that was previously set up
  const RecoverPassword({
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
  
  RecoverPassword copyWith({
    String? recoveryCode,
    String? newPassword,
    String? newHint,
  }) => RecoverPassword(
    recoveryCode: recoveryCode ?? this.recoveryCode,
    newPassword: newPassword ?? this.newPassword,
    newHint: newHint ?? this.newHint,
  );

  static const CONSTRUCTOR = 'recoverPassword';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
