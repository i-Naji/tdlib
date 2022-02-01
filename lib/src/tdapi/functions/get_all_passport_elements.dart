part of '../tdapi.dart';

class GetAllPassportElements extends TdFunction {

  /// Returns all available Telegram Passport elements
  const GetAllPassportElements({
    required this.password,
  });
  
  /// [password] Password of the current user
  final String password;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "password": password,
      "@extra": extra,
    };
  }
  
  GetAllPassportElements copyWith({
    String? password,
  }) => GetAllPassportElements(
    password: password ?? this.password,
  );

  static const CONSTRUCTOR = 'getAllPassportElements';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
