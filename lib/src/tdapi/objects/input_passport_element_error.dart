part of '../tdapi.dart';

class InputPassportElementError extends TdObject {
  PassportElementType type;
  String message;
  InputPassportElementErrorSource source;

  /// Contains the description of an error in a Telegram Passport element; for bots only. 
  /// [type] Type of Telegram Passport element that has the error . 
  /// [message] Error message . 
  /// [source] Error source
  InputPassportElementError({this.type,
    this.message,
    this.source});

  /// Parse from a json
  InputPassportElementError.fromJson(Map<String, dynamic> json)  {
    this.type = PassportElementType.fromJson(json['type'] ?? <String, dynamic>{});
    this.message = json['message'];
    this.source = InputPassportElementErrorSource.fromJson(json['source'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type.toJson(),
      "message": this.message,
      "source": this.source.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementError';
}