part of '../tdapi.dart';

class GetLogTagVerbosityLevel extends TdFunction {
  /// Returns current verbosity level for a specified TDLib internal log tag. Can be called synchronously
  GetLogTagVerbosityLevel({this.tag});

  /// [tag] Logging tag to change verbosity level
  String tag;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetLogTagVerbosityLevel.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "tag": this.tag,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLogTagVerbosityLevel';

  @override
  String getConstructor() => CONSTRUCTOR;
}
