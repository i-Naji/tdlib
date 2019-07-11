part of '../tdapi.dart';

class TestVectorStringObject implements TLObject {
  List<TestString> value;
  dynamic extra;

  /// A simple object containing a vector of objects that hold a string; for testing only.
  ///[value] Vector of objects
  TestVectorStringObject({this.value});

  /// Parse from a json
  TestVectorStringObject.fromJson(Map<String, dynamic> json) {
    this.value = List<TestString>.from((json['value'] ?? [])
        .map((listValue) => TestString.fromJson(listValue))
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

  static const String CONSTRUCTOR = "testVectorStringObject";

  @override
  String getConstructor() => CONSTRUCTOR;
}
