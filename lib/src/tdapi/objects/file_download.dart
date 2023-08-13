part of '../tdapi.dart';

class FileDownload extends TdObject {
  /// Describes a file added to file download list
  const FileDownload({
    required this.fileId,
    required this.message,
    required this.addDate,
    required this.completeDate,
    required this.isPaused,
  });

  /// [fileId] File identifier
  final int fileId;

  /// [message] The message with the file
  final Message message;

  /// [addDate] Point in time (Unix timestamp) when the file was added to the download list
  final int addDate;

  /// [completeDate] Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed
  final int completeDate;

  /// [isPaused] True, if downloading of the file is paused
  final bool isPaused;

  /// Parse from a json
  factory FileDownload.fromJson(Map<String, dynamic> json) => FileDownload(
        fileId: json['file_id'],
        message: Message.fromJson(json['message']),
        addDate: json['add_date'],
        completeDate: json['complete_date'],
        isPaused: json['is_paused'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_id": fileId,
      "message": message.toJson(),
      "add_date": addDate,
      "complete_date": completeDate,
      "is_paused": isPaused,
    };
  }

  FileDownload copyWith({
    int? fileId,
    Message? message,
    int? addDate,
    int? completeDate,
    bool? isPaused,
  }) =>
      FileDownload(
        fileId: fileId ?? this.fileId,
        message: message ?? this.message,
        addDate: addDate ?? this.addDate,
        completeDate: completeDate ?? this.completeDate,
        isPaused: isPaused ?? this.isPaused,
      );

  static const CONSTRUCTOR = 'fileDownload';

  @override
  String getConstructor() => CONSTRUCTOR;
}
