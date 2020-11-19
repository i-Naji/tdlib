part of '../tdapi.dart';

class PassportElementError extends TdObject {
  /// Contains the description of an error in a Telegram Passport element
  PassportElementError({this.type, this.message, this.source});

  /// [type] Type of the Telegram Passport element which has the error
  PassportElementType type;

  /// [message] Error message
  String message;

  /// [source] Error source
  PassportElementErrorSource source;

  /// Parse from a json
  PassportElementError.fromJson(Map<String, dynamic> json) {
    this.type =
        PassportElementType.fromJson(json['type'] ?? <String, dynamic>{});
    this.message = json['message'];
    this.source = PassportElementErrorSource.fromJson(
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

  static const CONSTRUCTOR = 'passportElementError';

  @override
  String getConstructor() => CONSTRUCTOR;
}
