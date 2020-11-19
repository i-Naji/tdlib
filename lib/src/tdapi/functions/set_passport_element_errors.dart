part of '../tdapi.dart';

class SetPassportElementErrors extends TdFunction {
  /// Informs the user that some of the elements in their Telegram Passport contain errors; for bots only. The user will not be able to resend the elements, until the errors are fixed
  SetPassportElementErrors({this.userId, this.errors});

  /// [userId] User identifier
  int userId;

  /// [errors] The errors
  List<InputPassportElementError> errors;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetPassportElementErrors.fromJson(Map<String, dynamic> json);

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
