part of '../tdapi.dart';

class TestCallVectorInt extends TdFunction {

  /// Returns the received vector of numbers; for testing only. This is an offline method. Can be called before authorization
  const TestCallVectorInt({
    required this.x,
  });
  
  /// [x] Vector of numbers to return
  final List<int> x;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "x": x.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  TestCallVectorInt copyWith({
    List<int>? x,
  }) => TestCallVectorInt(
    x: x ?? this.x,
  );

  static const CONSTRUCTOR = 'testCallVectorInt';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
