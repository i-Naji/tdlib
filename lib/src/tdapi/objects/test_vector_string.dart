part of '../tdapi.dart';

class TestVectorString implements TLObject {
  List<String> value;
  dynamic extra;

  /// A simple object containing a vector of strings; for testing only.
  ///[value] Vector of strings
  TestVectorString({this.value});

  /// Parse from a json
  TestVectorString.fromJson(Map<String, dynamic> json) {
    this.value = json['value'] ?? [];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'value': this.value};
  }

  static const String CONSTRUCTOR = 'testVectorString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
