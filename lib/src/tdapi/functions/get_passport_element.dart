part of '../tdapi.dart';

class GetPassportElement extends TdFunction {

  /// Returns one of the available Telegram Passport elements
  const GetPassportElement({
    required this.type,
    required this.password,
  });
  
  /// [type] Telegram Passport element type 
  final PassportElementType type;

  /// [password] Password of the current user
  final String password;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "password": password,
      "@extra": extra,
    };
  }
  
  GetPassportElement copyWith({
    PassportElementType? type,
    String? password,
  }) => GetPassportElement(
    type: type ?? this.type,
    password: password ?? this.password,
  );

  static const CONSTRUCTOR = 'getPassportElement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
