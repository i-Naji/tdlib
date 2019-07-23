part of '../tdapi.dart';

class GetLogTagVerbosityLevel extends TdFunction {
  String tag;
  dynamic extra;

  /// Returns current verbosity level for a specified TDLib internal log tag. This is an offline method. Can be called before authorization. Can be called synchronously.
  ///[tag] Logging tag to change verbosity level
  GetLogTagVerbosityLevel({this.tag});

  /// Parse from a json
  GetLogTagVerbosityLevel.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "tag": this.tag, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getLogTagVerbosityLevel";

  @override
  String getConstructor() => CONSTRUCTOR;
}
