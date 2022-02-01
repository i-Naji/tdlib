part of '../tdapi.dart';

class WriteGeneratedFilePart extends TdFunction {

  /// Writes a part of a generated file. This method is intended to be used only if the application has no direct access to TDLib's file system, because it is usually slower than a direct write to the destination file
  const WriteGeneratedFilePart({
    required this.generationId,
    required this.offset,
    required this.data,
  });
  
  /// [generationId] The identifier of the generation process
  final int generationId;

  /// [offset] The offset from which to write the data to the file 
  final int offset;

  /// [data] The data to write
  final String data;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": generationId,
      "offset": offset,
      "data": data,
      "@extra": extra,
    };
  }
  
  WriteGeneratedFilePart copyWith({
    int? generationId,
    int? offset,
    String? data,
  }) => WriteGeneratedFilePart(
    generationId: generationId ?? this.generationId,
    offset: offset ?? this.offset,
    data: data ?? this.data,
  );

  static const CONSTRUCTOR = 'writeGeneratedFilePart';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
