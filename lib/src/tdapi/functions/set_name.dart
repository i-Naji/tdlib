part of '../tdapi.dart';

class SetName extends TdFunction {
  String firstName;
  String lastName;
  dynamic extra;

  /// Changes the first and last name of the current user. If something changes, updateUser will be sent. 
  /// [firstName] The new value of the first name for the user; 1-64 characters . 
  /// [lastName] The new value of the optional last name for the user; 0-64 characters
  SetName({this.firstName,
    this.lastName});

  /// Parse from a json
  SetName.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "first_name": this.firstName,
      "last_name": this.lastName,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}