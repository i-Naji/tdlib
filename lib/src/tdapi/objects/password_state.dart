part of '../tdapi.dart';

class PasswordState implements TdObject {
  bool hasPassword;
  String passwordHint;
  bool hasRecoveryEmailAddress;
  bool hasPassportData;
  EmailAddressAuthenticationCodeInfo recoveryEmailAddressCodeInfo;
  dynamic extra;

  /// Represents the current state of 2-step verification.
  ///[hasPassword] True, if a 2-step verification password is set .
  /// [passwordHint] Hint for the password; may be empty.
  /// [hasRecoveryEmailAddress] True, if a recovery email is set .
  /// [hasPassportData] True, if some Telegram Passport elements were saved.
  /// [recoveryEmailAddressCodeInfo] Information about the recovery email address to which the confirmation email was sent; may be null
  PasswordState(
      {this.hasPassword,
      this.passwordHint,
      this.hasRecoveryEmailAddress,
      this.hasPassportData,
      this.recoveryEmailAddressCodeInfo});

  /// Parse from a json
  PasswordState.fromJson(Map<String, dynamic> json) {
    this.hasPassword = json['has_password'];
    this.passwordHint = json['password_hint'];
    this.hasRecoveryEmailAddress = json['has_recovery_email_address'];
    this.hasPassportData = json['has_passport_data'];
    this.recoveryEmailAddressCodeInfo =
        EmailAddressAuthenticationCodeInfo.fromJson(
            json['recovery_email_address_code_info'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "has_password": this.hasPassword,
      "password_hint": this.passwordHint,
      "has_recovery_email_address": this.hasRecoveryEmailAddress,
      "has_passport_data": this.hasPassportData,
      "recovery_email_address_code_info":
          this.recoveryEmailAddressCodeInfo.toJson()
    };
  }

  static const String CONSTRUCTOR = "passwordState";

  @override
  String getConstructor() => CONSTRUCTOR;
}
