part of '../tdapi.dart';

class GetLogStream extends TdFunction {

  /// Returns information about currently used log stream for internal logging of TDLib. Can be called synchronously
  const GetLogStream();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetLogStream copyWith() => const GetLogStream();

  static const CONSTRUCTOR = 'getLogStream';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
