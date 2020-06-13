part of '../tdapi.dart';

class RecoverPassword extends TdFunction {
  String recoveryCode;
  dynamic extra;

  /// Recovers the password using a recovery code sent to an email address that was previously set up. 
  /// [recoveryCode] Recovery code to check
  RecoverPassword({this.recoveryCode});

  /// Parse from a json
  RecoverPassword.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "recovery_code": this.recoveryCode,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'recoverPassword';
}