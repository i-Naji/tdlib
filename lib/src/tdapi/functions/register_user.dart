part of '../tdapi.dart';

class RegisterUser extends TdFunction {
  /// Finishes user registration. Works only when the current authorization state is authorizationStateWaitRegistration
  RegisterUser({this.firstName, this.lastName});

  /// [firstName] The first name of the user; 1-64 characters
  String firstName;

  /// [lastName] The last name of the user; 0-64 characters
  String lastName;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  RegisterUser.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "first_name": this.firstName,
      "last_name": this.lastName,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'registerUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}
