part of '../tdapi.dart';

class SetLogVerbosityLevel extends TdFunction {

  /// Sets the verbosity level of the internal logging of TDLib. Can be called synchronously
  const SetLogVerbosityLevel({
    required this.newVerbosityLevel,
  });
  
  /// [newVerbosityLevel] New value of the verbosity level for logging. Value 0 corresponds to fatal errors, value 1 corresponds to errors, value 2 corresponds to warnings and debug warnings, value 3 corresponds to informational, value 4 corresponds to debug, value 5 corresponds to verbose debug, value greater than 5 and up to 1023 can be used to enable even more logging
  final int newVerbosityLevel;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "new_verbosity_level": newVerbosityLevel,
      "@extra": extra,
    };
  }
  
  SetLogVerbosityLevel copyWith({
    int? newVerbosityLevel,
  }) => SetLogVerbosityLevel(
    newVerbosityLevel: newVerbosityLevel ?? this.newVerbosityLevel,
  );

  static const CONSTRUCTOR = 'setLogVerbosityLevel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
