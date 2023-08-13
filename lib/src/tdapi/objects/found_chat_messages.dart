part of '../tdapi.dart';

class FoundChatMessages extends TdObject {
  /// Contains a list of messages found by a search in a given chat
  const FoundChatMessages({
    required this.totalCount,
    required this.messages,
    required this.nextFromMessageId,
    this.extra,
    this.clientId,
  });

  /// [totalCount] Approximate total number of messages found; -1 if unknown
  final int totalCount;

  /// [messages] List of messages
  final List<Message> messages;

  /// [nextFromMessageId] The offset for the next request. If 0, there are no more results
  final int nextFromMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory FoundChatMessages.fromJson(Map<String, dynamic> json) =>
      FoundChatMessages(
        totalCount: json['total_count'],
        messages: List<Message>.from((json['messages'] ?? [])
            .map((item) => Message.fromJson(item))
            .toList()),
        nextFromMessageId: json['next_from_message_id'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "messages": messages.map((i) => i.toJson()).toList(),
      "next_from_message_id": nextFromMessageId,
    };
  }

  FoundChatMessages copyWith({
    int? totalCount,
    List<Message>? messages,
    int? nextFromMessageId,
    dynamic extra,
    int? clientId,
  }) =>
      FoundChatMessages(
        totalCount: totalCount ?? this.totalCount,
        messages: messages ?? this.messages,
        nextFromMessageId: nextFromMessageId ?? this.nextFromMessageId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'foundChatMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
