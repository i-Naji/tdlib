part of '../tdapi.dart';

class GetPassportAuthorizationFormAvailableElements extends TdFunction {
  /// Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization form. Result can be received only once for each authorization form
  const GetPassportAuthorizationFormAvailableElements({
    required this.authorizationFormId,
    required this.password,
  });

  /// [authorizationFormId] Authorization form identifier
  final int authorizationFormId;

  /// [password] The 2-step verification password of the current user
  final String password;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "authorization_form_id": authorizationFormId,
      "password": password,
      "@extra": extra,
    };
  }

  GetPassportAuthorizationFormAvailableElements copyWith({
    int? authorizationFormId,
    String? password,
  }) =>
      GetPassportAuthorizationFormAvailableElements(
        authorizationFormId: authorizationFormId ?? this.authorizationFormId,
        password: password ?? this.password,
      );

  static const CONSTRUCTOR = 'getPassportAuthorizationFormAvailableElements';

  @override
  String getConstructor() => CONSTRUCTOR;
}
