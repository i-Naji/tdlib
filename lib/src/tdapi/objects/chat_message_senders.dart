part of '../tdapi.dart';

class ChatMessageSenders extends TdObject {
  /// Represents a list of message senders, which can be used to send messages in a chat
  const ChatMessageSenders({
    required this.senders,
    this.extra,
    this.clientId,
  });

  /// [senders] List of available message senders
  final List<ChatMessageSender> senders;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory ChatMessageSenders.fromJson(Map<String, dynamic> json) =>
      ChatMessageSenders(
        senders: List<ChatMessageSender>.from((json['senders'] ?? [])
            .map((item) => ChatMessageSender.fromJson(item))
            .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "senders": senders.map((i) => i.toJson()).toList(),
    };
  }

  ChatMessageSenders copyWith({
    List<ChatMessageSender>? senders,
    dynamic extra,
    int? clientId,
  }) =>
      ChatMessageSenders(
        senders: senders ?? this.senders,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'chatMessageSenders';

  @override
  String getConstructor() => CONSTRUCTOR;
}
