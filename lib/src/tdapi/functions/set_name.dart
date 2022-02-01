part of '../tdapi.dart';

class SetName extends TdFunction {

  /// Changes the first and last name of the current user
  const SetName({
    required this.firstName,
    required this.lastName,
  });
  
  /// [firstName] The new value of the first name for the current user; 1-64 characters 
  final String firstName;

  /// [lastName] The new value of the optional last name for the current user; 0-64 characters
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
  
  SetName copyWith({
    String? firstName,
    String? lastName,
  }) => SetName(
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
  );

  static const CONSTRUCTOR = 'setName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
