part of '../tdapi.dart';

class SendPassportAuthorizationForm extends TdFunction {

  /// Sends a Telegram Passport authorization form, effectively sharing data with the service. This method must be called after getPassportAuthorizationFormAvailableElements if some previously available elements are going to be reused
  const SendPassportAuthorizationForm({
    required this.autorizationFormId,
    required this.types,
  });
  
  /// [autorizationFormId] Authorization form identifier
  final int autorizationFormId;

  /// [types] Types of Telegram Passport elements chosen by user to complete the authorization form
  final List<PassportElementType> types;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "autorization_form_id": autorizationFormId,
      "types": types.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }
  
  SendPassportAuthorizationForm copyWith({
    int? autorizationFormId,
    List<PassportElementType>? types,
  }) => SendPassportAuthorizationForm(
    autorizationFormId: autorizationFormId ?? this.autorizationFormId,
    types: types ?? this.types,
  );

  static const CONSTRUCTOR = 'sendPassportAuthorizationForm';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
