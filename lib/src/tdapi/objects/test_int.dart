part of '../tdapi.dart';

class TestInt extends TdObject {
  /// A simple object containing a number; for testing only
  TestInt({this.value});

  /// [value] Number
  int value;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  TestInt.fromJson(Map<String, dynamic> json) {
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

  static const CONSTRUCTOR = 'testInt';

  @override
  String getConstructor() => CONSTRUCTOR;
}
