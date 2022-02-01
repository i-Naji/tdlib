part of '../tdapi.dart';

class CheckPhoneNumberConfirmationCode extends TdFunction {

  /// Checks phone number confirmation code
  const CheckPhoneNumberConfirmationCode({
    required this.code,
  });
  
  /// [code] Confirmation code to check
  final String code;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "code": code,
      "@extra": extra,
    };
  }
  
  CheckPhoneNumberConfirmationCode copyWith({
    String? code,
  }) => CheckPhoneNumberConfirmationCode(
    code: code ?? this.code,
  );

  static const CONSTRUCTOR = 'checkPhoneNumberConfirmationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
