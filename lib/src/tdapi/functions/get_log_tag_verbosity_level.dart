part of '../tdapi.dart';

class GetLogTagVerbosityLevel extends TdFunction {

  /// Returns current verbosity level for a specified TDLib internal log tag. Can be called synchronously
  const GetLogTagVerbosityLevel({
    required this.tag,
  });
  
  /// [tag] Logging tag to change verbosity level
  final String tag;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "tag": tag,
      "@extra": extra,
    };
  }
  
  GetLogTagVerbosityLevel copyWith({
    String? tag,
  }) => GetLogTagVerbosityLevel(
    tag: tag ?? this.tag,
  );

  static const CONSTRUCTOR = 'getLogTagVerbosityLevel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
