part of '../tdapi.dart';

class StorageStatistics extends TdObject {
  int size;
  int count;
  List<List<StorageStatisticsByChat>> byChat;
  dynamic extra;

  /// Contains the exact storage usage statistics split by chats and file type. 
  /// [size] Total size of files . 
  /// [count] Total number of files . 
  /// [byChat] Statistics split by chats
  StorageStatistics({this.size,
    this.count,
    this.byChat});

  /// Parse from a json
  StorageStatistics.fromJson(Map<String, dynamic> json)  {
    this.size = json['size'];
    this.count = json['count'];
    this.byChat = List<List<StorageStatisticsByChat>>.from((json['by_chat'] ?? []).map((item) => List<StorageStatisticsByChat>.from((item ?? []).map((innerItem) => StorageStatisticsByChat.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "size": this.size,
      "count": this.count,
      "by_chat": this.byChat.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'storageStatistics';
}