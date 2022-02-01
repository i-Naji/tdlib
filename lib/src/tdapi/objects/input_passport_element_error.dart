part of '../tdapi.dart';

class InputPassportElementError extends TdObject {

  /// Contains the description of an error in a Telegram Passport element; for bots only
  const InputPassportElementError({
    required this.type,
    required this.message,
    required this.source,
  });
  
  /// [type] Type of Telegram Passport element that has the error 
  final PassportElementType type;

  /// [message] Error message 
  final String message;

  /// [source] Error source
  final InputPassportElementErrorSource source;
  
  /// Parse from a json
  factory InputPassportElementError.fromJson(Map<String, dynamic> json) => InputPassportElementError(
    type: PassportElementType.fromJson(json['type']),
    message: json['message'],
    source: InputPassportElementErrorSource.fromJson(json['source']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "message": message,
      "source": source.toJson(),
    };
  }
  
  InputPassportElementError copyWith({
    PassportElementType? type,
    String? message,
    InputPassportElementErrorSource? source,
  }) => InputPassportElementError(
    type: type ?? this.type,
    message: message ?? this.message,
    source: source ?? this.source,
  );

  static const CONSTRUCTOR = 'inputPassportElementError';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
