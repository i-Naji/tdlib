part of '../tdapi.dart';

class TestCallString extends TdFunction {
  String x;
  dynamic extra;

  /// Returns the received string; for testing only. This is an offline method. Can be called before authorization. 
  /// [x] String to return
  TestCallString({this.x});

  /// Parse from a json
  TestCallString.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "x": this.x,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'testCallString';
}