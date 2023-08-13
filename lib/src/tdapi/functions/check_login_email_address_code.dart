part of '../tdapi.dart';

class CheckLoginEmailAddressCode extends TdFunction {
  /// Checks the login email address authentication
  const CheckLoginEmailAddressCode({
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

  CheckLoginEmailAddressCode copyWith({
    EmailAddressAuthentication? code,
  }) =>
      CheckLoginEmailAddressCode(
        code: code ?? this.code,
      );

  static const CONSTRUCTOR = 'checkLoginEmailAddressCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
