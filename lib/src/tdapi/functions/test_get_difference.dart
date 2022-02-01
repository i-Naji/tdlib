part of '../tdapi.dart';

class TestGetDifference extends TdFunction {

  /// Forces an updates.getDifference call to the Telegram servers; for testing only
  const TestGetDifference();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  TestGetDifference copyWith() => const TestGetDifference();

  static const CONSTRUCTOR = 'testGetDifference';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
