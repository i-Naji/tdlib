part of '../tdapi.dart';

class RegisterUser extends TdFunction {

  /// Finishes user registration. Works only when the current authorization state is authorizationStateWaitRegistration
  const RegisterUser({
    required this.firstName,
    required this.lastName,
  });
  
  /// [firstName] The first name of the user; 1-64 characters
  final String firstName;

  /// [lastName] The last name of the user; 0-64 characters
  final String lastName;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "first_name": firstName,
      "last_name": lastName,
      "@extra": extra,
    };
  }
  
  RegisterUser copyWith({
    String? firstName,
    String? lastName,
  }) => RegisterUser(
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
  );

  static const CONSTRUCTOR = 'registerUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
