part of '../tdapi.dart';

class TestVectorInt extends TdObject {
  /// A simple object containing a vector of numbers; for testing only
  TestVectorInt({this.value});

  /// [value] Vector of numbers
  List<int> value;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  TestVectorInt.fromJson(Map<String, dynamic> json) {
    this.value =
        List<int>.from((json['value'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'testVectorInt';

  @override
  String getConstructor() => CONSTRUCTOR;
}
