part of '../tdapi.dart';

class SetLogTagVerbosityLevel extends TdFunction {

  /// Sets the verbosity level for a specified TDLib internal log tag. Can be called synchronously
  const SetLogTagVerbosityLevel({
    required this.tag,
    required this.newVerbosityLevel,
  });
  
  /// [tag] Logging tag to change verbosity level
  final String tag;

  /// [newVerbosityLevel] New verbosity level; 1-1024
  final int newVerbosityLevel;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "tag": tag,
      "new_verbosity_level": newVerbosityLevel,
      "@extra": extra,
    };
  }
  
  SetLogTagVerbosityLevel copyWith({
    String? tag,
    int? newVerbosityLevel,
  }) => SetLogTagVerbosityLevel(
    tag: tag ?? this.tag,
    newVerbosityLevel: newVerbosityLevel ?? this.newVerbosityLevel,
  );

  static const CONSTRUCTOR = 'setLogTagVerbosityLevel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
