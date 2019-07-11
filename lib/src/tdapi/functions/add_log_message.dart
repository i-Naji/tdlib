part of '../tdapi.dart';

class AddLogMessage extends TLFunction {
  int verbosityLevel;
  String text;
  dynamic extra;

  /// Adds a message to TDLib internal log. This is an offline method. Can be called before authorization. Can be called synchronously.
  ///[verbosityLevel] Minimum verbosity level needed for the message to be logged, 0-1023 .
  /// [text] Text of a message to log
  AddLogMessage({this.verbosityLevel, this.text});

  /// Parse from a json
  AddLogMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "verbosity_level": this.verbosityLevel,
      "text": this.text,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "addLogMessage";

  @override
  String getConstructor() => CONSTRUCTOR;
}
