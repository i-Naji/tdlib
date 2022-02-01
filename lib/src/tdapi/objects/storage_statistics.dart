part of '../tdapi.dart';

class StorageStatistics extends TdObject {

  /// Contains the exact storage usage statistics split by chats and file type
  const StorageStatistics({
    required this.size,
    required this.count,
    required this.byChat,
    this.extra,
    this.clientId,
  });
  
  /// [size] Total size of files, in bytes 
  final int size;

  /// [count] Total number of files 
  final int count;

  /// [byChat] Statistics split by chats
  final List<StorageStatisticsByChat> byChat;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StorageStatistics.fromJson(Map<String, dynamic> json) => StorageStatistics(
    size: json['size'],
    count: json['count'],
    byChat: List<StorageStatisticsByChat>.from((json['by_chat'] ?? []).map((item) => StorageStatisticsByChat.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "size": size,
      "count": count,
      "by_chat": byChat.map((i) => i.toJson()).toList(),
    };
  }
  
  StorageStatistics copyWith({
    int? size,
    int? count,
    List<StorageStatisticsByChat>? byChat,
    dynamic extra,
    int? clientId,
  }) => StorageStatistics(
    size: size ?? this.size,
    count: count ?? this.count,
    byChat: byChat ?? this.byChat,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'storageStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
