part of '../tdapi.dart';

class StorageStatisticsByChat extends TdObject {
  /// Contains the storage usage statistics for a specific chat
  StorageStatisticsByChat(
      {this.chatId, this.size, this.count, this.byFileType});

  /// [chatId] Chat identifier; 0 if none
  int chatId;

  /// [size] Total size of the files in the chat
  int size;

  /// [count] Total number of files in the chat
  int count;

  /// [byFileType] Statistics split by file types
  List<StorageStatisticsByFileType> byFileType;

  /// Parse from a json
  StorageStatisticsByChat.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.size = json['size'];
    this.count = json['count'];
    this.byFileType = List<StorageStatisticsByFileType>.from(
        (json['by_file_type'] ?? [])
            .map((item) => StorageStatisticsByFileType.fromJson(
                item ?? <String, dynamic>{}))
            .toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "size": this.size,
      "count": this.count,
      "by_file_type": this.byFileType.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'storageStatisticsByChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
