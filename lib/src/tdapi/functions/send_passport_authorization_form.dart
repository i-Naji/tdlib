part of '../tdapi.dart';

class SendPassportAuthorizationForm extends TdFunction {
  /// Sends a Telegram Passport authorization form, effectively sharing data with the service. This method must be called after getPassportAuthorizationFormAvailableElements if some previously available elements are going to be reused
  SendPassportAuthorizationForm({this.autorizationFormId, this.types});

  /// [autorizationFormId] Authorization form identifier
  int autorizationFormId;

  /// [types] Types of Telegram Passport elements chosen by user to complete the authorization form
  List<PassportElementType> types;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SendPassportAuthorizationForm.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "autorization_form_id": this.autorizationFormId,
      "types": this.types.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendPassportAuthorizationForm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
