part of '../tdapi.dart';

class DeleteFile extends TLFunction {
  int fileId;
  dynamic extra;

  /// Deletes a file from the TDLib file cache.
  ///[fileId] Identifier of the file to delete
  DeleteFile({this.fileId});

  /// Parse from a json
  DeleteFile.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "file_id": this.fileId, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "deleteFile";

  @override
  String getConstructor() => CONSTRUCTOR;
}
