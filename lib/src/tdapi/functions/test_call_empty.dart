part of '../tdapi.dart';

class TestCallEmpty extends TdFunction {
  dynamic extra;

  /// Does nothing; for testing only. This is an offline method. Can be called before authorization.
  ///
  TestCallEmpty();

  /// Parse from a json
  TestCallEmpty.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "testCallEmpty";

  @override
  String getConstructor() => CONSTRUCTOR;
}
