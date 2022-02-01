part of '../tdapi.dart';

class TestSquareInt extends TdFunction {

  /// Returns the squared received number; for testing only. This is an offline method. Can be called before authorization
  const TestSquareInt({
    required this.x,
  });
  
  /// [x] Number to square
  final int x;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "x": x,
      "@extra": extra,
    };
  }
  
  TestSquareInt copyWith({
    int? x,
  }) => TestSquareInt(
    x: x ?? this.x,
  );

  static const CONSTRUCTOR = 'testSquareInt';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
