part of '../tdapi.dart';

class CreateTemporaryPassword extends TdFunction {
  String password;
  int validFor;
  dynamic extra;

  /// Creates a new temporary password for processing payments. 
  /// [password] Persistent user password . 
  /// [validFor] Time during which the temporary password will be valid, in seconds; should be between 60 and 86400
  CreateTemporaryPassword({this.password,
    this.validFor});

  /// Parse from a json
  CreateTemporaryPassword.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "password": this.password,
      "valid_for": this.validFor,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createTemporaryPassword';
}