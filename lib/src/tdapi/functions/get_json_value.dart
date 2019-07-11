part of '../tdapi.dart';

class GetJsonValue extends TLFunction {
  String json;
  dynamic extra;

  /// Converts a JSON-serialized string to corresponding JsonValue object. This is an offline method. Can be called before authorization. Can be called synchronously.
  ///[json] The JSON-serialized string
  GetJsonValue({this.json});

  /// Parse from a json
  GetJsonValue.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "json": this.json, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getJsonValue";

  @override
  String getConstructor() => CONSTRUCTOR;
}
