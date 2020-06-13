part of '../tdapi.dart';

class TestCallVectorInt extends TdFunction {
  List<List<int>> x;
  dynamic extra;

  /// Returns the received vector of numbers; for testing only. This is an offline method. Can be called before authorization. 
  /// [x] Vector of numbers to return
  TestCallVectorInt({this.x});

  /// Parse from a json
  TestCallVectorInt.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "x": this.x.map((i) => i.map((ii) => ii).toList()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'testCallVectorInt';
}