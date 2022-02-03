part of '../tdapi.dart';

class UploadFile extends TdFunction {

  /// Asynchronously uploads a file to the cloud without sending it in a message. updateFile will be used to notify about upload progress and successful completion of the upload. The file will not have a persistent remote identifier until it will be sent in a message
  const UploadFile({
    required this.file,
    this.fileType,
    required this.priority,
  });
  
  /// [file] File to upload
  final InputFile file;

  /// [fileType] File type; pass null if unknown
  final FileType? fileType;

  /// [priority] Priority of the upload (1-32). The higher the priority, the earlier the file will be uploaded. If the priorities of two files are equal, then the first one for which uploadFile was called will be uploaded first
  final int priority;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file": file.toJson(),
      "file_type": fileType?.toJson(),
      "priority": priority,
      "@extra": extra,
    };
  }
  
  UploadFile copyWith({
    InputFile? file,
    FileType? fileType,
    int? priority,
  }) => UploadFile(
    file: file ?? this.file,
    fileType: fileType ?? this.fileType,
    priority: priority ?? this.priority,
  );

  static const CONSTRUCTOR = 'uploadFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
