part of '../tdapi.dart';

class SetPassword extends TdFunction {

  /// Changes the password for the current user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed
  const SetPassword({
    required this.oldPassword,
    required this.newPassword,
    required this.newHint,
    required this.setRecoveryEmailAddress,
    required this.newRecoveryEmailAddress,
  });
  
  /// [oldPassword] Previous password of the user
  final String oldPassword;

  /// [newPassword] New password of the user; may be empty to remove the password 
  final String newPassword;

  /// [newHint] New password hint; may be empty 
  final String newHint;

  /// [setRecoveryEmailAddress] Pass true if the recovery email address must be changed 
  final bool setRecoveryEmailAddress;

  /// [newRecoveryEmailAddress] New recovery email address; may be empty
  final String newRecoveryEmailAddress;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_password": oldPassword,
      "new_password": newPassword,
      "new_hint": newHint,
      "set_recovery_email_address": setRecoveryEmailAddress,
      "new_recovery_email_address": newRecoveryEmailAddress,
      "@extra": extra,
    };
  }
  
  SetPassword copyWith({
    String? oldPassword,
    String? newPassword,
    String? newHint,
    bool? setRecoveryEmailAddress,
    String? newRecoveryEmailAddress,
  }) => SetPassword(
    oldPassword: oldPassword ?? this.oldPassword,
    newPassword: newPassword ?? this.newPassword,
    newHint: newHint ?? this.newHint,
    setRecoveryEmailAddress: setRecoveryEmailAddress ?? this.setRecoveryEmailAddress,
    newRecoveryEmailAddress: newRecoveryEmailAddress ?? this.newRecoveryEmailAddress,
  );

  static const CONSTRUCTOR = 'setPassword';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
