part of '../tdapi.dart';

class TestNetwork extends TdFunction {

  /// Sends a simple network request to the Telegram servers; for testing only. Can be called before authorization
  const TestNetwork();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  TestNetwork copyWith() => const TestNetwork();

  static const CONSTRUCTOR = 'testNetwork';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
