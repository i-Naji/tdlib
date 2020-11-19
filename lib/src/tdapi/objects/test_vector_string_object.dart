part of '../tdapi.dart';

class TestVectorStringObject extends TdObject {
  /// A simple object containing a vector of objects that hold a string; for testing only
  TestVectorStringObject({this.value});

  /// [value] Vector of objects
  List<TestString> value;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  TestVectorStringObject.fromJson(Map<String, dynamic> json) {
    this.value = List<TestString>.from((json['value'] ?? [])
        .map((item) => TestString.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'testVectorStringObject';

  @override
  String getConstructor() => CONSTRUCTOR;
}
