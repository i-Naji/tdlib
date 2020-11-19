part of '../tdapi.dart';

class StorageStatistics extends TdObject {
  /// Contains the exact storage usage statistics split by chats and file type
  StorageStatistics({this.size, this.count, this.byChat});

  /// [size] Total size of files
  int size;

  /// [count] Total number of files
  int count;

  /// [byChat] Statistics split by chats
  List<StorageStatisticsByChat> byChat;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  StorageStatistics.fromJson(Map<String, dynamic> json) {
    this.size = json['size'];
    this.count = json['count'];
    this.byChat = List<StorageStatisticsByChat>.from((json['by_chat'] ?? [])
        .map((item) =>
            StorageStatisticsByChat.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "size": this.size,
      "count": this.count,
      "by_chat": this.byChat.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'storageStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
