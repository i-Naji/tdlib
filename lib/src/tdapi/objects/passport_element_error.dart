part of '../tdapi.dart';

class PassportElementError extends TdObject {

  /// Contains the description of an error in a Telegram Passport element
  const PassportElementError({
    required this.type,
    required this.message,
    required this.source,
  });
  
  /// [type] Type of the Telegram Passport element which has the error 
  final PassportElementType type;

  /// [message] Error message 
  final String message;

  /// [source] Error source
  final PassportElementErrorSource source;
  
  /// Parse from a json
  factory PassportElementError.fromJson(Map<String, dynamic> json) => PassportElementError(
    type: PassportElementType.fromJson(json['type']),
    message: json['message'],
    source: PassportElementErrorSource.fromJson(json['source']),
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
  
  PassportElementError copyWith({
    PassportElementType? type,
    String? message,
    PassportElementErrorSource? source,
  }) => PassportElementError(
    type: type ?? this.type,
    message: message ?? this.message,
    source: source ?? this.source,
  );

  static const CONSTRUCTOR = 'passportElementError';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
