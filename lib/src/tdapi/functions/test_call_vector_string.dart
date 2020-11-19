part of '../tdapi.dart';

class TestCallVectorString extends TdFunction {
  /// Returns the received vector of strings; for testing only. This is an offline method. Can be called before authorization
  TestCallVectorString({this.x});

  /// [x] Vector of strings to return
  List<String> x;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  TestCallVectorString.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "x": this.x.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'testCallVectorString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
