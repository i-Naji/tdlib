part of '../tdapi.dart';

class StorageStatisticsByChat extends TdObject {
  int chatId;
  int size;
  int count;
  List<List<StorageStatisticsByFileType>> byFileType;

  /// Contains the storage usage statistics for a specific chat. 
  /// [chatId] Chat identifier; 0 if none . 
  /// [size] Total size of the files in the chat . 
  /// [count] Total number of files in the chat . 
  /// [byFileType] Statistics split by file types
  StorageStatisticsByChat({this.chatId,
    this.size,
    this.count,
    this.byFileType});

  /// Parse from a json
  StorageStatisticsByChat.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.size = json['size'];
    this.count = json['count'];
    this.byFileType = List<List<StorageStatisticsByFileType>>.from((json['by_file_type'] ?? []).map((item) => List<StorageStatisticsByFileType>.from((item ?? []).map((innerItem) => StorageStatisticsByFileType.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "size": this.size,
      "count": this.count,
      "by_file_type": this.byFileType.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'storageStatisticsByChat';
}