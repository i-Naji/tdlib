part of '../tdapi.dart';

class SetLogTagVerbosityLevel extends TdFunction {
  /// Sets the verbosity level for a specified TDLib internal log tag. Can be called synchronously
  SetLogTagVerbosityLevel({this.tag, this.newVerbosityLevel});

  /// [tag] Logging tag to change verbosity level
  String tag;

  /// [newVerbosityLevel] New verbosity level; 1-1024
  int newVerbosityLevel;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetLogTagVerbosityLevel.fromJson(Map<String, dynamic> json);

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
