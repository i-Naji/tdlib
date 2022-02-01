part of '../tdapi.dart';

class GetLogVerbosityLevel extends TdFunction {

  /// Returns current verbosity level of the internal logging of TDLib. Can be called synchronously
  const GetLogVerbosityLevel();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetLogVerbosityLevel copyWith() => const GetLogVerbosityLevel();

  static const CONSTRUCTOR = 'getLogVerbosityLevel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
