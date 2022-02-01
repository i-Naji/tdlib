part of '../tdapi.dart';

class AddLogMessage extends TdFunction {

  /// Adds a message to TDLib internal log. Can be called synchronously
  const AddLogMessage({
    required this.verbosityLevel,
    required this.text,
  });
  
  /// [verbosityLevel] The minimum verbosity level needed for the message to be logged; 0-1023
  final int verbosityLevel;

  /// [text] Text of a message to log
  final String text;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "verbosity_level": verbosityLevel,
      "text": text,
      "@extra": extra,
    };
  }
  
  AddLogMessage copyWith({
    int? verbosityLevel,
    String? text,
  }) => AddLogMessage(
    verbosityLevel: verbosityLevel ?? this.verbosityLevel,
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'addLogMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
