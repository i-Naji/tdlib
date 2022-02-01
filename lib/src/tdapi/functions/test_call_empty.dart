part of '../tdapi.dart';

class TestCallEmpty extends TdFunction {

  /// Does nothing; for testing only. This is an offline method. Can be called before authorization
  const TestCallEmpty();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  TestCallEmpty copyWith() => const TestCallEmpty();

  static const CONSTRUCTOR = 'testCallEmpty';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
