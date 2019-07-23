part of '../tdapi.dart';

class UploadFile extends TdFunction {
  var file;
  var fileType;
  int priority;
  dynamic extra;

  /// Asynchronously uploads a file to the cloud without sending it in a message. updateFile will be used to notify about upload progress and successful completion of the upload. The file will not have a persistent remote identifier until it will be sent in a message.
  ///[file] File to upload .
  /// [fileType] File type.
  /// [priority] Priority of the upload (1-32). The higher the priority, the earlier the file will be uploaded. If the priorities of two files are equal, then the first one for which uploadFile was called will be uploaded first
  UploadFile({this.file, this.fileType, this.priority});

  /// Parse from a json
  UploadFile.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file": this.file.toJson(),
      "file_type": this.fileType.toJson(),
      "priority": this.priority,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "uploadFile";

  @override
  String getConstructor() => CONSTRUCTOR;
}
