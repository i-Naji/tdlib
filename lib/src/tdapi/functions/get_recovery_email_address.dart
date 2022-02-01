part of '../tdapi.dart';

class GetRecoveryEmailAddress extends TdFunction {

  /// Returns a 2-step verification recovery email address that was previously set up. This method can be used to verify a password provided by the user
  const GetRecoveryEmailAddress({
    required this.password,
  });
  
  /// [password] The password for the current user
  final String password;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "password": password,
      "@extra": extra,
    };
  }
  
  GetRecoveryEmailAddress copyWith({
    String? password,
  }) => GetRecoveryEmailAddress(
    password: password ?? this.password,
  );

  static const CONSTRUCTOR = 'getRecoveryEmailAddress';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
