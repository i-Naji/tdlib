part of '../tdapi.dart';

class TestNetwork extends TLFunction {
  dynamic extra;

  /// Sends a simple network request to the Telegram servers; for testing only. Can be called before authorization.
  ///
  TestNetwork();

  /// Parse from a json
  TestNetwork.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "testNetwork";

  @override
  String getConstructor() => CONSTRUCTOR;
}
