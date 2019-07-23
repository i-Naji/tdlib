part of '../tdapi.dart';

class ResendAuthenticationCode extends TdFunction {
  dynamic extra;

  /// Re-sends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitCode and the next_code_type of the result is not null.
  ///
  ResendAuthenticationCode();

  /// Parse from a json
  ResendAuthenticationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "resendAuthenticationCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}
