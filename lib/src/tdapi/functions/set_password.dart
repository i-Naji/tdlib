part of '../tdapi.dart';

class SetPassword extends TdFunction {
  /// Changes the password for the user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed
  SetPassword(
      {this.oldPassword,
      this.newPassword,
      this.newHint,
      this.setRecoveryEmailAddress,
      this.newRecoveryEmailAddress});

  /// [oldPassword] Previous password of the user
  String oldPassword;

  /// [newPassword] New password of the user; may be empty to remove the password
  String newPassword;

  /// [newHint] New password hint; may be empty
  String newHint;

  /// [setRecoveryEmailAddress] Pass true if the recovery email address should be changed
  bool setRecoveryEmailAddress;

  /// [newRecoveryEmailAddress] New recovery email address; may be empty
  String newRecoveryEmailAddress;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetPassword.fromJson(Map<String, dynamic> json);

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

  @override
  String getConstructor() => CONSTRUCTOR;
}
