part of '../tdapi.dart';

class TestVectorIntObject implements TLObject {
  List<TestInt> value;
  dynamic extra;

  /// A simple object containing a vector of objects that hold a number; for testing only.
  ///[value] Vector of objects
  TestVectorIntObject({this.value});

  /// Parse from a json
  TestVectorIntObject.fromJson(Map<String, dynamic> json) {
    this.value = List<TestInt>.from((json['value'] ?? [])
        .map((listValue) => TestInt.fromJson(listValue))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "testVectorIntObject";

  @override
  String getConstructor() => CONSTRUCTOR;
}
