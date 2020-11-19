part of '../tdapi.dart';

class SetAlarm extends TdFunction {
  /// Succeeds after a specified amount of time has passed. Can be called before initialization
  SetAlarm({this.seconds});

  /// [seconds] Number of seconds before the function returns
  double seconds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetAlarm.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "seconds": this.seconds,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setAlarm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
