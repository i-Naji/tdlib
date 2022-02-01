part of '../tdapi.dart';

class SetAlarm extends TdFunction {

  /// Succeeds after a specified amount of time has passed. Can be called before initialization
  const SetAlarm({
    required this.seconds,
  });
  
  /// [seconds] Number of seconds before the function returns
  final double seconds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "seconds": seconds,
      "@extra": extra,
    };
  }
  
  SetAlarm copyWith({
    double? seconds,
  }) => SetAlarm(
    seconds: seconds ?? this.seconds,
  );

  static const CONSTRUCTOR = 'setAlarm';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
