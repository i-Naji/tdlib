part of '../tdapi.dart';

class PassportElementError extends TdObject {
  PassportElementType type;
  String message;
  PassportElementErrorSource source;

  /// Contains the description of an error in a Telegram Passport element. 
  /// [type] Type of the Telegram Passport element which has the error . 
  /// [message] Error message . 
  /// [source] Error source
  PassportElementError({this.type,
    this.message,
    this.source});

  /// Parse from a json
  PassportElementError.fromJson(Map<String, dynamic> json)  {
    this.type = PassportElementType.fromJson(json['type'] ?? <String, dynamic>{});
    this.message = json['message'];
    this.source = PassportElementErrorSource.fromJson(json['source'] ?? <String, dynamic>{});
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

  static const CONSTRUCTOR = 'passportElementError';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}