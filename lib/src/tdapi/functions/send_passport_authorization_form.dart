part of '../tdapi.dart';

class SendPassportAuthorizationForm extends TdFunction {
  /// Sends a Telegram Passport authorization form, effectively sharing data with the service. This method must be called after getPassportAuthorizationFormAvailableElements if some previously available elements are going to be reused
  const SendPassportAuthorizationForm({
    required this.authorizationFormId,
    required this.types,
  });

  /// [authorizationFormId] Authorization form identifier
  final int authorizationFormId;

  /// [types] Types of Telegram Passport elements chosen by user to complete the authorization form
  final List<PassportElementType> types;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "authorization_form_id": authorizationFormId,
      "types": types.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }

  SendPassportAuthorizationForm copyWith({
    int? authorizationFormId,
    List<PassportElementType>? types,
  }) =>
      SendPassportAuthorizationForm(
        authorizationFormId: authorizationFormId ?? this.authorizationFormId,
        types: types ?? this.types,
      );

  static const CONSTRUCTOR = 'sendPassportAuthorizationForm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
