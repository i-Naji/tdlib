part of '../tdapi.dart';

class Chats extends TdObject {

  /// Represents a list of chats
  const Chats({
    required this.totalCount,
    required this.chatIds,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] Approximate total count of chats found 
  final int totalCount;

  /// [chatIds] List of chat identifiers
  final List<int> chatIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Chats.fromJson(Map<String, dynamic> json) => Chats(
    totalCount: json['total_count'],
    chatIds: List<int>.from((json['chat_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "chat_ids": chatIds.map((i) => i).toList(),
    };
  }
  
  Chats copyWith({
    int? totalCount,
    List<int>? chatIds,
    dynamic extra,
    int? clientId,
  }) => Chats(
    totalCount: totalCount ?? this.totalCount,
    chatIds: chatIds ?? this.chatIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
