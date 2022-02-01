part of '../tdapi.dart';

class SetPassportElementErrors extends TdFunction {

  /// Informs the user that some of the elements in their Telegram Passport contain errors; for bots only. The user will not be able to resend the elements, until the errors are fixed
  const SetPassportElementErrors({
    required this.userId,
    required this.errors,
  });
  
  /// [userId] User identifier 
  final int userId;

  /// [errors] The errors
  final List<InputPassportElementError> errors;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "errors": errors.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }
  
  SetPassportElementErrors copyWith({
    int? userId,
    List<InputPassportElementError>? errors,
  }) => SetPassportElementErrors(
    userId: userId ?? this.userId,
    errors: errors ?? this.errors,
  );

  static const CONSTRUCTOR = 'setPassportElementErrors';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
