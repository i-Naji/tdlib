part of '../tdapi.dart';

class TestGetDifference extends TLFunction {
  dynamic extra;

  /// Forces an updates.getDifference call to the Telegram servers; for testing only.
  ///
  TestGetDifference();

  /// Parse from a json
  TestGetDifference.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "testGetDifference";

  @override
  String getConstructor() => CONSTRUCTOR;
}
