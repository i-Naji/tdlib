part of '../tdapi.dart';

class TestString extends TdObject {
  /// A simple object containing a string; for testing only
  TestString({this.value});

  /// [value] String
  String value;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  TestString.fromJson(Map<String, dynamic> json) {
    this.value = json['value'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value,
    };
  }

  static const CONSTRUCTOR = 'testString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
