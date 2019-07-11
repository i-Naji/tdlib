part of '../tdapi.dart';

class StorageStatistics implements TLObject {
  int size;
  int count;
  List<StorageStatisticsByChat> byChat;
  dynamic extra;

  /// Contains the exact storage usage statistics split by chats and file type.
  ///[size] Total size of files .
  /// [count] Total number of files .
  /// [byChat] Statistics split by chats
  StorageStatistics({this.size, this.count, this.byChat});

  /// Parse from a json
  StorageStatistics.fromJson(Map<String, dynamic> json) {
    this.size = json['size'];
    this.count = json['count'];
    this.byChat = List<StorageStatisticsByChat>.from((json['by_chat'] ?? [])
        .map((listValue) => StorageStatisticsByChat.fromJson(listValue))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "size": this.size,
      "count": this.count,
      "by_chat": this.byChat.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "storageStatistics";

  @override
  String getConstructor() => CONSTRUCTOR;
}
