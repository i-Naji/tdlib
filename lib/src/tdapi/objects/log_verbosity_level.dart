part of '../tdapi.dart';

class LogVerbosityLevel extends TdObject {
  /// Contains a TDLib internal log verbosity level
  LogVerbosityLevel({this.verbosityLevel});

  /// [verbosityLevel] Log verbosity level
  int verbosityLevel;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  LogVerbosityLevel.fromJson(Map<String, dynamic> json) {
    this.verbosityLevel = json['verbosity_level'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "verbosity_level": this.verbosityLevel,
    };
  }

  static const CONSTRUCTOR = 'logVerbosityLevel';

  @override
  String getConstructor() => CONSTRUCTOR;
}
