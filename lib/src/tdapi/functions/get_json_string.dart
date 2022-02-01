part of '../tdapi.dart';

class GetJsonString extends TdFunction {

  /// Converts a JsonValue object to corresponding JSON-serialized string. Can be called synchronously
  const GetJsonString({
    required this.jsonValue,
  });
  
  /// [jsonValue] The JsonValue object
  final JsonValue jsonValue;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "json_value": jsonValue.toJson(),
      "@extra": extra,
    };
  }
  
  GetJsonString copyWith({
    JsonValue? jsonValue,
  }) => GetJsonString(
    jsonValue: jsonValue ?? this.jsonValue,
  );

  static const CONSTRUCTOR = 'getJsonString';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
