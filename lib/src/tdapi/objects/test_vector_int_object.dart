part of '../tdapi.dart';

class TestVectorIntObject extends TdObject {
  List<List<TestInt>> value;
  dynamic extra;

  /// A simple object containing a vector of objects that hold a number; for testing only. 
  /// [value] Vector of objects
  TestVectorIntObject({this.value});

  /// Parse from a json
  TestVectorIntObject.fromJson(Map<String, dynamic> json)  {
    this.value = List<List<TestInt>>.from((json['value'] ?? []).map((item) => List<TestInt>.from((item ?? []).map((innerItem) => TestInt.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'testVectorIntObject';
}