part of '../tdapi.dart';

class AddLogMessage extends TdFunction {
  /// Adds a message to TDLib internal log. Can be called synchronously
  AddLogMessage({this.verbosityLevel, this.text});

  /// [verbosityLevel] The minimum verbosity level needed for the message to be logged, 0-1023
  int verbosityLevel;

  /// [text] Text of a message to log
  String text;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  AddLogMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "verbosity_level": this.verbosityLevel,
      "text": this.text,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addLogMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
