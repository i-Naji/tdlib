part of '../tdapi.dart';

class AddFileToDownloads extends TdFunction {
  /// Adds a file from a message to the list of file downloads. Download progress and completion of the download will be notified through updateFile updates.. If message database is used, the list of file downloads is persistent across application restarts. The downloading is independent from download using downloadFile, i.e. it continues if downloadFile is canceled or is used to download a part of the file
  const AddFileToDownloads({
    required this.fileId,
    required this.chatId,
    required this.messageId,
    required this.priority,
  });

  /// [fileId] Identifier of the file to download
  final int fileId;

  /// [chatId] Chat identifier of the message with the file
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [priority] Priority of the download (1-32). The higher the priority, the earlier the file will be downloaded. If the priorities of two files are equal, then the last one for which downloadFile/addFileToDownloads was called will be downloaded first
  final int priority;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_id": fileId,
      "chat_id": chatId,
      "message_id": messageId,
      "priority": priority,
      "@extra": extra,
    };
  }

  AddFileToDownloads copyWith({
    int? fileId,
    int? chatId,
    int? messageId,
    int? priority,
  }) =>
      AddFileToDownloads(
        fileId: fileId ?? this.fileId,
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        priority: priority ?? this.priority,
      );

  static const CONSTRUCTOR = 'addFileToDownloads';

  @override
  String getConstructor() => CONSTRUCTOR;
}
