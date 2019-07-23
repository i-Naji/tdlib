part of '../tdapi.dart';

class TestUseError extends TdFunction {
  dynamic extra;

  /// Does nothing and ensures that the Error object is used; for testing only. This is an offline method. Can be called before authorization.
  ///
  TestUseError();

  /// Parse from a json
  TestUseError.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "testUseError";

  @override
  String getConstructor() => CONSTRUCTOR;
}
