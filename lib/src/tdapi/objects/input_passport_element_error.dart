part of '../tdapi.dart';

class InputPassportElementError extends TdObject {
  /// Contains the description of an error in a Telegram Passport element; for bots only
  InputPassportElementError({this.type, this.message, this.source});

  /// [type] Type of Telegram Passport element that has the error
  PassportElementType type;

  /// [message] Error message
  String message;

  /// [source] Error source
  InputPassportElementErrorSource source;

  /// Parse from a json
  InputPassportElementError.fromJson(Map<String, dynamic> json) {
    this.type =
        PassportElementType.fromJson(json['type'] ?? <String, dynamic>{});
    this.message = json['message'];
    this.source = InputPassportElementErrorSource.fromJson(
        json['source'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type == null ? null : this.type.toJson(),
      "message": this.message,
      "source": this.source == null ? null : this.source.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementError';

  @override
  String getConstructor() => CONSTRUCTOR;
}
