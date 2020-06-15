part of '../tdapi.dart';

class TestVectorString extends TdObject {
  List<String> value;
  dynamic extra;

  /// A simple object containing a vector of strings; for testing only. 
  /// [value] Vector of strings
  TestVectorString({this.value});

  /// Parse from a json
  TestVectorString.fromJson(Map<String, dynamic> json)  {
    this.value = List<String>.from((json['value'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'testVectorString';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}