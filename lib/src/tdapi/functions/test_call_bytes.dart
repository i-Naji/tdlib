part of '../tdapi.dart';

class TestCallBytes extends TdFunction {

  /// Returns the received bytes; for testing only. This is an offline method. Can be called before authorization
  const TestCallBytes({
    required this.x,
  });
  
  /// [x] Bytes to return
  final String x;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "x": x,
      "@extra": extra,
    };
  }
  
  TestCallBytes copyWith({
    String? x,
  }) => TestCallBytes(
    x: x ?? this.x,
  );

  static const CONSTRUCTOR = 'testCallBytes';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
