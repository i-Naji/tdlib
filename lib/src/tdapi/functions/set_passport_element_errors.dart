part of '../tdapi.dart';

class SetPassportElementErrors extends TdFunction {
  int userId;
  List<InputPassportElementError> errors;
  dynamic extra;

  /// Informs the user that some of the elements in their Telegram Passport contain errors; for bots only. The user will not be able to resend the elements, until the errors are fixed. 
  /// [userId] User identifier . 
  /// [errors] The errors
  SetPassportElementErrors({this.userId,
    this.errors});

  /// Parse from a json
  SetPassportElementErrors.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "errors": this.errors.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setPassportElementErrors';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}