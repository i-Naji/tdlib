part of '../tdapi.dart';

class TestCallVectorString extends TdFunction {

  /// Returns the received vector of strings; for testing only. This is an offline method. Can be called before authorization
  const TestCallVectorString({
    required this.x,
  });
  
  /// [x] Vector of strings to return
  final List<String> x;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "x": x.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  TestCallVectorString copyWith({
    List<String>? x,
  }) => TestCallVectorString(
    x: x ?? this.x,
  );

  static const CONSTRUCTOR = 'testCallVectorString';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
