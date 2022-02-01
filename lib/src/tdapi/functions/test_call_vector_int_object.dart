part of '../tdapi.dart';

class TestCallVectorIntObject extends TdFunction {

  /// Returns the received vector of objects containing a number; for testing only. This is an offline method. Can be called before authorization
  const TestCallVectorIntObject({
    required this.x,
  });
  
  /// [x] Vector of objects to return
  final List<TestInt> x;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "x": x.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }
  
  TestCallVectorIntObject copyWith({
    List<TestInt>? x,
  }) => TestCallVectorIntObject(
    x: x ?? this.x,
  );

  static const CONSTRUCTOR = 'testCallVectorIntObject';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
