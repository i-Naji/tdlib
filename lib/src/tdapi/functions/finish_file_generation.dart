part of '../tdapi.dart';

class FinishFileGeneration extends TdFunction {
  /// Finishes the file generation
  FinishFileGeneration({this.generationId, this.error});

  /// [generationId] The identifier of the generation process
  int generationId;

  /// [error] If set, means that file generation has failed and should be terminated
  TdError error;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  FinishFileGeneration.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": this.generationId,
      "error": this.error == null ? null : this.error.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'finishFileGeneration';

  @override
  String getConstructor() => CONSTRUCTOR;
}
