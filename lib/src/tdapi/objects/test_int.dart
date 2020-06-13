part of '../tdapi.dart';

class TestInt extends TdObject {
  int value;
  dynamic extra;

  /// A simple object containing a number; for testing only. 
  /// [value] Number
  TestInt({this.value});

  /// Parse from a json
  TestInt.fromJson(Map<String, dynamic> json)  {
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
}