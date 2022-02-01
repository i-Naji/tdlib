part of '../tdapi.dart';

class GetJsonValue extends TdFunction {

  /// Converts a JSON-serialized string to corresponding JsonValue object. Can be called synchronously
  const GetJsonValue({
    required this.json,
  });
  
  /// [json] The JSON-serialized string
  final String json;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "json": json,
      "@extra": extra,
    };
  }
  
  GetJsonValue copyWith({
    String? json,
  }) => GetJsonValue(
    json: json ?? this.json,
  );

  static const CONSTRUCTOR = 'getJsonValue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
