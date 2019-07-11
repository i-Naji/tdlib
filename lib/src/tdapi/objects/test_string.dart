part of '../tdapi.dart';

class TestString implements TLObject {
  String value;
  dynamic extra;

  /// A simple object containing a string; for testing only.
  ///[value] String
  TestString({this.value});

  /// Parse from a json
  TestString.fromJson(Map<String, dynamic> json) {
    this.value = json['value'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "value": this.value};
  }

  static const String CONSTRUCTOR = "testString";

  @override
  String getConstructor() => CONSTRUCTOR;
}
