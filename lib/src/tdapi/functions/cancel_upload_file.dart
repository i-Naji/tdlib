part of '../tdapi.dart';

class CancelUploadFile extends TdFunction {

  /// Stops the uploading of a file. Supported only for files uploaded by using uploadFile. For other files the behavior is undefined
  const CancelUploadFile({
    required this.fileId,
  });
  
  /// [fileId] Identifier of the file to stop uploading
  final int fileId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_id": fileId,
      "@extra": extra,
    };
  }
  
  CancelUploadFile copyWith({
    int? fileId,
  }) => CancelUploadFile(
    fileId: fileId ?? this.fileId,
  );

  static const CONSTRUCTOR = 'cancelUploadFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
