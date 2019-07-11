part of '../tdapi.dart';

class GetPassportAuthorizationFormAvailableElements extends TLFunction {
  int autorizationFormId;
  String password;
  dynamic extra;

  /// Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization form. Result can be received only once for each authorization form.
  ///[autorizationFormId] Authorization form identifier .
  /// [password] Password of the current user
  GetPassportAuthorizationFormAvailableElements(
      {this.autorizationFormId, this.password});

  /// Parse from a json
  GetPassportAuthorizationFormAvailableElements.fromJson(
      Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "autorization_form_id": this.autorizationFormId,
      "password": this.password,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR =
      "getPassportAuthorizationFormAvailableElements";

  @override
  String getConstructor() => CONSTRUCTOR;
}
