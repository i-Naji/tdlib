part of '../tdapi.dart';

class GetRemoteFile extends TdFunction {

  /// Returns information about a file by its remote getRemoteFile; this is an offline request. Can be used to register a URL as a file for further uploading, or sending as a message. Even the request succeeds, the file can be used only if it is still accessible to the user.. For example, if the file is from a message, then the message must be not deleted and accessible to the user. If the file database is disabled, then the corresponding object with the file must be preloaded by the application
  const GetRemoteFile({
    required this.remoteFileId,
    this.fileType,
  });
  
  /// [remoteFileId] Remote identifier of the file to get
  final String remoteFileId;

  /// [fileType] File type; pass null if unknown
  final FileType? fileType;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "remote_file_id": remoteFileId,
      "file_type": fileType?.toJson(),
      "@extra": extra,
    };
  }
  
  GetRemoteFile copyWith({
    String? remoteFileId,
    FileType? fileType,
  }) => GetRemoteFile(
    remoteFileId: remoteFileId ?? this.remoteFileId,
    fileType: fileType ?? this.fileType,
  );

  static const CONSTRUCTOR = 'getRemoteFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
