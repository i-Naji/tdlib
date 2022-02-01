part of '../tdapi.dart';

class TestCallVectorStringObject extends TdFunction {

  /// Returns the received vector of objects containing a string; for testing only. This is an offline method. Can be called before authorization
  const TestCallVectorStringObject({
    required this.x,
  });
  
  /// [x] Vector of objects to return
  final List<TestString> x;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "x": x.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }
  
  TestCallVectorStringObject copyWith({
    List<TestString>? x,
  }) => TestCallVectorStringObject(
    x: x ?? this.x,
  );

  static const CONSTRUCTOR = 'testCallVectorStringObject';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
