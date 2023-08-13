part of '../tdapi.dart';

class CheckAuthenticationPassword extends TdFunction {
  /// Checks the 2-step verification password for correctness. Works only when the current authorization state is authorizationStateWaitPassword
  const CheckAuthenticationPassword({
    required this.password,
  });

  /// [password] The 2-step verification password to check
  final String password;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "password": password,
      "@extra": extra,
    };
  }

  CheckAuthenticationPassword copyWith({
    String? password,
  }) =>
      CheckAuthenticationPassword(
        password: password ?? this.password,
      );

  static const CONSTRUCTOR = 'checkAuthenticationPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}
