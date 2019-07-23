part of '../tdapi.dart';

class TestVectorInt implements TdObject {
  List<int> value;
  dynamic extra;

  /// A simple object containing a vector of numbers; for testing only.
  ///[value] Vector of numbers
  TestVectorInt({this.value});

  /// Parse from a json
  TestVectorInt.fromJson(Map<String, dynamic> json) {
    this.value = List<int>.from(json['value'] ?? []);
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "value": this.value};
  }

  static const String CONSTRUCTOR = "testVectorInt";

  @override
  String getConstructor() => CONSTRUCTOR;
}
