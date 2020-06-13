part of '../tdapi.dart';

class TestVectorStringObject extends TdObject {
  List<List<TestString>> value;
  dynamic extra;

  /// A simple object containing a vector of objects that hold a string; for testing only. 
  /// [value] Vector of objects
  TestVectorStringObject({this.value});

  /// Parse from a json
  TestVectorStringObject.fromJson(Map<String, dynamic> json)  {
    this.value = List<List<TestString>>.from((json['value'] ?? []).map((item) => List<TestString>.from((item ?? []).map((innerItem) => TestString.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'testVectorStringObject';
}