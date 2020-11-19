part of '../tdapi.dart';

class TestCallVectorStringObject extends TdFunction {
  /// Returns the received vector of objects containing a string; for testing only. This is an offline method. Can be called before authorization
  TestCallVectorStringObject({this.x});

  /// [x] Vector of objects to return
  List<TestString> x;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  TestCallVectorStringObject.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "x": this.x.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'testCallVectorStringObject';

  @override
  String getConstructor() => CONSTRUCTOR;
}
