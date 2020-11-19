part of '../tdapi.dart';

class TestNetwork extends TdFunction {
  /// Sends a simple network request to the Telegram servers; for testing only. Can be called before authorization
  TestNetwork();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  TestNetwork.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'testNetwork';

  @override
  String getConstructor() => CONSTRUCTOR;
}
