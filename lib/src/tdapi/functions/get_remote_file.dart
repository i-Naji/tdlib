part of '../tdapi.dart';

class GetRemoteFile extends TdFunction {
  String remoteFileId;
  var fileType;
  dynamic extra;

  /// Returns information about a file by its remote ID; this is an offline request. Can be used to register a URL as a file for further uploading, or sending as a message.
  ///[remoteFileId] Remote identifier of the file to get .
  /// [fileType] File type, if known
  GetRemoteFile({this.remoteFileId, this.fileType});

  /// Parse from a json
  GetRemoteFile.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "remote_file_id": this.remoteFileId,
      "file_type": this.fileType.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getRemoteFile";

  @override
  String getConstructor() => CONSTRUCTOR;
}
