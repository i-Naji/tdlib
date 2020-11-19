part of '../tdapi.dart';

class CancelUploadFile extends TdFunction {
  /// Stops the uploading of a file. Supported only for files uploaded by using uploadFile. For other files the behavior is undefined
  CancelUploadFile({this.fileId});

  /// [fileId] Identifier of the file to stop uploading
  int fileId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CancelUploadFile.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'cancelUploadFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
