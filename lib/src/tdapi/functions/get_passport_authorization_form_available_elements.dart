part of '../tdapi.dart';

class GetPassportAuthorizationFormAvailableElements extends TdFunction {

  /// Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization form. Result can be received only once for each authorization form
  const GetPassportAuthorizationFormAvailableElements({
    required this.autorizationFormId,
    required this.password,
  });
  
  /// [autorizationFormId] Authorization form identifier 
  final int autorizationFormId;

  /// [password] Password of the current user
  final String password;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "autorization_form_id": autorizationFormId,
      "password": password,
      "@extra": extra,
    };
  }
  
  GetPassportAuthorizationFormAvailableElements copyWith({
    int? autorizationFormId,
    String? password,
  }) => GetPassportAuthorizationFormAvailableElements(
    autorizationFormId: autorizationFormId ?? this.autorizationFormId,
    password: password ?? this.password,
  );

  static const CONSTRUCTOR = 'getPassportAuthorizationFormAvailableElements';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
