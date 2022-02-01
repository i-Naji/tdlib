part of '../tdapi.dart';

class SetFileGenerationProgress extends TdFunction {

  /// Informs TDLib on a file generation progress
  const SetFileGenerationProgress({
    required this.generationId,
    required this.expectedSize,
    required this.localPrefixSize,
  });
  
  /// [generationId] The identifier of the generation process
  final int generationId;

  /// [expectedSize] Expected size of the generated file, in bytes; 0 if unknown
  final int expectedSize;

  /// [localPrefixSize] The number of bytes already generated
  final int localPrefixSize;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": generationId,
      "expected_size": expectedSize,
      "local_prefix_size": localPrefixSize,
      "@extra": extra,
    };
  }
  
  SetFileGenerationProgress copyWith({
    int? generationId,
    int? expectedSize,
    int? localPrefixSize,
  }) => SetFileGenerationProgress(
    generationId: generationId ?? this.generationId,
    expectedSize: expectedSize ?? this.expectedSize,
    localPrefixSize: localPrefixSize ?? this.localPrefixSize,
  );

  static const CONSTRUCTOR = 'setFileGenerationProgress';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
