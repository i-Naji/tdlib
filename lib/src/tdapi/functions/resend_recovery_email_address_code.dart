part of '../tdapi.dart';

class ResendRecoveryEmailAddressCode extends TdFunction {
  dynamic extra;

  /// Resends the 2-step verification recovery email address verification code.
  ///
  ResendRecoveryEmailAddressCode();

  /// Parse from a json
  ResendRecoveryEmailAddressCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "resendRecoveryEmailAddressCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}
