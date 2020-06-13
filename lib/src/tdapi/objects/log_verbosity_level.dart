part of '../tdapi.dart';

class LogVerbosityLevel extends TdObject {
  int verbosityLevel;
  dynamic extra;

  /// Contains a TDLib internal log verbosity level. 
  /// [verbosityLevel] Log verbosity level
  LogVerbosityLevel({this.verbosityLevel});

  /// Parse from a json
  LogVerbosityLevel.fromJson(Map<String, dynamic> json)  {
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
}