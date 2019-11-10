part of '../tdapi.dart';

class RegisterUser extends TdFunction {
  String firstName;
  String lastName;
  dynamic extra;

  /// Finishes user registration. Works only when the current authorization state is authorizationStateWaitRegistration.
  ///[firstName] The first name of the user; 1-64 characters .
  /// [lastName] The last name of the user; 0-64 characters
  RegisterUser({this.firstName, this.lastName});

  /// Parse from a json
  RegisterUser.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "first_name": this.firstName,
      "last_name": this.lastName,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "registerUser";

  @override
  String getConstructor() => CONSTRUCTOR;
}
