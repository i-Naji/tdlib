part of '../tdapi.dart';

class CreateTemporaryPassword extends TdFunction {

  /// Creates a new temporary password for processing payments
  const CreateTemporaryPassword({
    required this.password,
    required this.validFor,
  });
  
  /// [password] Persistent user password 
  final String password;

  /// [validFor] Time during which the temporary password will be valid, in seconds; must be between 60 and 86400
  final int validFor;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "password": password,
      "valid_for": validFor,
      "@extra": extra,
    };
  }
  
  CreateTemporaryPassword copyWith({
    String? password,
    int? validFor,
  }) => CreateTemporaryPassword(
    password: password ?? this.password,
    validFor: validFor ?? this.validFor,
  );

  static const CONSTRUCTOR = 'createTemporaryPassword';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
