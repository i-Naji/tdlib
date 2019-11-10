part of '../tdapi.dart';

class SetRecoveryEmailAddress extends TdFunction {
  String password;
  String newRecoveryEmailAddress;
  dynamic extra;

  /// Changes the 2-step verification recovery email address of the user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed.. If new_recovery_email_address is the same as the email address that is currently set up, this call succeeds immediately and aborts all other requests waiting for an email confirmation.
  ///[password] Password of the current user .
  /// [newRecoveryEmailAddress] New recovery email address
  SetRecoveryEmailAddress({this.password, this.newRecoveryEmailAddress});

  /// Parse from a json
  SetRecoveryEmailAddress.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "password": this.password,
      "new_recovery_email_address": this.newRecoveryEmailAddress,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "setRecoveryEmailAddress";

  @override
  String getConstructor() => CONSTRUCTOR;
}
