part of '../tdapi.dart';

class StorageStatisticsByChat extends TdObject {

  /// Contains the storage usage statistics for a specific chat
  const StorageStatisticsByChat({
    required this.chatId,
    required this.size,
    required this.count,
    required this.byFileType,
  });
  
  /// [chatId] Chat identifier; 0 if none 
  final int chatId;

  /// [size] Total size of the files in the chat, in bytes 
  final int size;

  /// [count] Total number of files in the chat 
  final int count;

  /// [byFileType] Statistics split by file types
  final List<StorageStatisticsByFileType> byFileType;
  
  /// Parse from a json
  factory StorageStatisticsByChat.fromJson(Map<String, dynamic> json) => StorageStatisticsByChat(
    chatId: json['chat_id'] ?? 0,
    size: json['size'],
    count: json['count'],
    byFileType: List<StorageStatisticsByFileType>.from((json['by_file_type'] ?? []).map((item) => StorageStatisticsByFileType.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "size": size,
      "count": count,
      "by_file_type": byFileType.map((i) => i.toJson()).toList(),
    };
  }
  
  StorageStatisticsByChat copyWith({
    int? chatId,
    int? size,
    int? count,
    List<StorageStatisticsByFileType>? byFileType,
  }) => StorageStatisticsByChat(
    chatId: chatId ?? this.chatId,
    size: size ?? this.size,
    count: count ?? this.count,
    byFileType: byFileType ?? this.byFileType,
  );

  static const CONSTRUCTOR = 'storageStatisticsByChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
