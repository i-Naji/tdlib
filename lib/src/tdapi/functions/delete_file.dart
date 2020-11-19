part of '../tdapi.dart';

class DeleteFile extends TdFunction {
  /// Deletes a file from the TDLib file cache
  DeleteFile({this.fileId});

  /// [fileId] Identifier of the file to delete
  int fileId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  DeleteFile.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'deleteFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
