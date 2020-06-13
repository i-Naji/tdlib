part of '../tdapi.dart';

class TestVectorString extends TdObject {
  List<List<String>> value;
  dynamic extra;

  /// A simple object containing a vector of strings; for testing only. 
  /// [value] Vector of strings
  TestVectorString({this.value});

  /// Parse from a json
  TestVectorString.fromJson(Map<String, dynamic> json)  {
    this.value = List<List<String>>.from((json['value'] ?? []).map((item) => List<String>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value.map((i) => i.map((ii) => ii).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'testVectorString';
}