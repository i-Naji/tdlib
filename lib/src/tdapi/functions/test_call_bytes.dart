part of '../tdapi.dart';

class TestCallBytes extends TdFunction {
  String x;
  dynamic extra;

  /// Returns the received bytes; for testing only. This is an offline method. Can be called before authorization. 
  /// [x] Bytes to return
  TestCallBytes({this.x});

  /// Parse from a json
  TestCallBytes.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "x": this.x,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'testCallBytes';
}