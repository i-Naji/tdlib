part of '../tdapi.dart';

class GetLogVerbosityLevel extends TdFunction {

  /// Returns current verbosity level of the internal logging of TDLib. This is an offline method. Can be called before authorization. Can be called synchronously
  GetLogVerbosityLevel();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetLogVerbosityLevel.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLogVerbosityLevel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}