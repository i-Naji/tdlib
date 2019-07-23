part of '../tdapi.dart';

class TestSquareInt extends TdFunction {
  int x;
  dynamic extra;

  /// Returns the squared received number; for testing only. This is an offline method. Can be called before authorization.
  ///[x] Number to square
  TestSquareInt({this.x});

  /// Parse from a json
  TestSquareInt.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "x": this.x, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "testSquareInt";

  @override
  String getConstructor() => CONSTRUCTOR;
}
