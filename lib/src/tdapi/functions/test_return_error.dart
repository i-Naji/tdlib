part of '../tdapi.dart';

class TestReturnError extends TdFunction {

  /// Returns the specified error and ensures that the Error object is used; for testing only. Can be called synchronously
  const TestReturnError({
    required this.error,
  });
  
  /// [error] The error to be returned
  final TdError error;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "error": error.toJson(),
      "@extra": extra,
    };
  }
  
  TestReturnError copyWith({
    TdError? error,
  }) => TestReturnError(
    error: error ?? this.error,
  );

  static const CONSTRUCTOR = 'testReturnError';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
