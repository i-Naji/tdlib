part of '../tdapi.dart';

class CancelUploadFile extends TLFunction {
  int fileId;
  dynamic extra;

  /// Stops the uploading of a file. Supported only for files uploaded by using uploadFile. For other files the behavior is undefined.
  ///[fileId] Identifier of the file to stop uploading
  CancelUploadFile({this.fileId});

  /// Parse from a json
  CancelUploadFile.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'file_id': this.fileId, '@extra': this.extra};
  }

  static const String CONSTRUCTOR = 'cancelUploadFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
