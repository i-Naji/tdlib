part of '../tdapi.dart';

class RequestPasswordRecovery extends TdFunction {
  dynamic extra;

  /// Requests to send a password recovery code to an email address that was previously set up.
  ///
  RequestPasswordRecovery();

  /// Parse from a json
  RequestPasswordRecovery.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "requestPasswordRecovery";

  @override
  String getConstructor() => CONSTRUCTOR;
}
