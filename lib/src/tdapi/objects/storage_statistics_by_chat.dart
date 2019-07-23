part of '../tdapi.dart';

class StorageStatisticsByChat implements TdObject {
  int chatId;
  int size;
  int count;
  List<StorageStatisticsByFileType> byFileType;

  /// Contains the storage usage statistics for a specific chat.
  ///[chatId] Chat identifier; 0 if none .
  /// [size] Total size of the files in the chat .
  /// [count] Total number of files in the chat .
  /// [byFileType] Statistics split by file types
  StorageStatisticsByChat(
      {this.chatId, this.size, this.count, this.byFileType});

  /// Parse from a json
  StorageStatisticsByChat.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.size = json['size'];
    this.count = json['count'];
    this.byFileType = List<StorageStatisticsByFileType>.from(
        (json['by_file_type'] ?? [])
            .map((listValue) => StorageStatisticsByFileType.fromJson(listValue))
            .toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "size": this.size,
      "count": this.count,
      "by_file_type":
          this.byFileType.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "storageStatisticsByChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
