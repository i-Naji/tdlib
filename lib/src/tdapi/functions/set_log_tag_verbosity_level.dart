part of '../tdapi.dart';

class SetLogTagVerbosityLevel extends TdFunction {
  String tag;
  int newVerbosityLevel;
  dynamic extra;

  /// Sets the verbosity level for a specified TDLib internal log tag. This is an offline method. Can be called before authorization. Can be called synchronously. 
  /// [tag] Logging tag to change verbosity level. 
  /// [newVerbosityLevel] New verbosity level; 1-1024
  SetLogTagVerbosityLevel({this.tag,
    this.newVerbosityLevel});

  /// Parse from a json
  SetLogTagVerbosityLevel.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "tag": this.tag,
      "new_verbosity_level": this.newVerbosityLevel,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setLogTagVerbosityLevel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}