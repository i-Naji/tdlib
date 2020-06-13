part of '../tdapi.dart';

class SetPassword extends TdFunction {
  String oldPassword;
  String newPassword;
  String newHint;
  bool setRecoveryEmailAddress;
  String newRecoveryEmailAddress;
  dynamic extra;

  /// Changes the password for the user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed. 
  /// [oldPassword] Previous password of the user. 
  /// [newPassword] New password of the user; may be empty to remove the password . 
  /// [newHint] New password hint; may be empty . 
  /// [setRecoveryEmailAddress] Pass true if the recovery email address should be changed . 
  /// [newRecoveryEmailAddress] New recovery email address; may be empty
  SetPassword({this.oldPassword,
    this.newPassword,
    this.newHint,
    this.setRecoveryEmailAddress,
    this.newRecoveryEmailAddress});

  /// Parse from a json
  SetPassword.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_password": this.oldPassword,
      "new_password": this.newPassword,
      "new_hint": this.newHint,
      "set_recovery_email_address": this.setRecoveryEmailAddress,
      "new_recovery_email_address": this.newRecoveryEmailAddress,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setPassword';
}