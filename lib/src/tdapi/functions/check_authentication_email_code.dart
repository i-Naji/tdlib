part of '../tdapi.dart';

class CheckAuthenticationEmailCode extends TdFunction {
  /// Checks the authentication of a email address. Works only when the current authorization state is authorizationStateWaitEmailCode
  const CheckAuthenticationEmailCode({
    required this.code,
  });

  /// [code] Email address authentication to check
  final EmailAddressAuthentication code;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "code": code.toJson(),
      "@extra": extra,
    };
  }

  CheckAuthenticationEmailCode copyWith({
    EmailAddressAuthentication? code,
  }) =>
      CheckAuthenticationEmailCode(
        code: code ?? this.code,
      );

  static const CONSTRUCTOR = 'checkAuthenticationEmailCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
