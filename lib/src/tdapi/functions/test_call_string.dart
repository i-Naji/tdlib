part of '../tdapi.dart';

class TestCallString extends TdFunction {
  /// Returns the received string; for testing only. This is an offline method. Can be called before authorization
  TestCallString({this.x});

  /// [x] String to return
  String x;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  TestCallString.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "x": this.x,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'testCallString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
