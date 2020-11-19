part of '../tdapi.dart';

class GetJsonValue extends TdFunction {
  /// Converts a JSON-serialized string to corresponding JsonValue object. Can be called synchronously
  GetJsonValue({this.json});

  /// [json] The JSON-serialized string
  String json;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetJsonValue.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "json": this.json,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getJsonValue';

  @override
  String getConstructor() => CONSTRUCTOR;
}
