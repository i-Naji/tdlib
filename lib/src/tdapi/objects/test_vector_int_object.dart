part of '../tdapi.dart';

class TestVectorIntObject extends TdObject {
  List<TestInt> value;
  dynamic extra;

  /// A simple object containing a vector of objects that hold a number; for testing only. 
  /// [value] Vector of objects
  TestVectorIntObject({this.value});

  /// Parse from a json
  TestVectorIntObject.fromJson(Map<String, dynamic> json)  {
    this.value = List<TestInt>.from((json['value'] ?? []).map((item) => TestInt.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'testVectorIntObject';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}