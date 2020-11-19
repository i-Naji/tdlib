part of '../tdapi.dart';

class GetJsonString extends TdFunction {
  /// Converts a JsonValue object to corresponding JSON-serialized string. Can be called synchronously
  GetJsonString({this.jsonValue});

  /// [jsonValue] The JsonValue object
  JsonValue jsonValue;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetJsonString.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "json_value": this.jsonValue == null ? null : this.jsonValue.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getJsonString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
