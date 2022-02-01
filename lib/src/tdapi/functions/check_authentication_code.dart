part of '../tdapi.dart';

class CheckAuthenticationCode extends TdFunction {

  /// Checks the authentication code. Works only when the current authorization state is authorizationStateWaitCode
  const CheckAuthenticationCode({
    required this.code,
  });
  
  /// [code] Authentication code to check
  final String code;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "code": code,
      "@extra": extra,
    };
  }
  
  CheckAuthenticationCode copyWith({
    String? code,
  }) => CheckAuthenticationCode(
    code: code ?? this.code,
  );

  static const CONSTRUCTOR = 'checkAuthenticationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
