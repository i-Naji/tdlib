part of '../tdapi.dart';

class TestReturnError extends TdFunction {
  Error error;
  dynamic extra;

  /// Returns the specified error and ensures that the Error object is used; for testing only. This is an offline method. Can be called before authorization. Can be called synchronously.
  ///[error] The error to be returned
  TestReturnError({this.error});

  /// Parse from a json
  TestReturnError.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "error": this.error.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "testReturnError";

  @override
  String getConstructor() => CONSTRUCTOR;
}
