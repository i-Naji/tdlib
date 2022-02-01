part of '../tdapi.dart';

class CheckChangePhoneNumberCode extends TdFunction {

  /// Checks the authentication code sent to confirm a new phone number of the user
  const CheckChangePhoneNumberCode({
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
  
  CheckChangePhoneNumberCode copyWith({
    String? code,
  }) => CheckChangePhoneNumberCode(
    code: code ?? this.code,
  );

  static const CONSTRUCTOR = 'checkChangePhoneNumberCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
