part of '../tdapi.dart';

class MessageReaction extends TdObject {
  /// Contains information about a reaction to a message
  const MessageReaction({
    required this.type,
    required this.totalCount,
    required this.isChosen,
    required this.recentSenderIds,
  });

  /// [type] Type of the reaction
  final ReactionType type;

  /// [totalCount] Number of times the reaction was added
  final int totalCount;

  /// [isChosen] True, if the reaction is chosen by the current user
  final bool isChosen;

  /// [recentSenderIds] Identifiers of at most 3 recent message senders, added the reaction; available in private, basic group and supergroup chats
  final List<MessageSender> recentSenderIds;

  /// Parse from a json
  factory MessageReaction.fromJson(Map<String, dynamic> json) =>
      MessageReaction(
        type: ReactionType.fromJson(json['type']),
        totalCount: json['total_count'],
        isChosen: json['is_chosen'],
        recentSenderIds: List<MessageSender>.from(
            (json['recent_sender_ids'] ?? [])
                .map((item) => MessageSender.fromJson(item))
                .toList()),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "total_count": totalCount,
      "is_chosen": isChosen,
      "recent_sender_ids": recentSenderIds.map((i) => i.toJson()).toList(),
    };
  }

  MessageReaction copyWith({
    ReactionType? type,
    int? totalCount,
    bool? isChosen,
    List<MessageSender>? recentSenderIds,
  }) =>
      MessageReaction(
        type: type ?? this.type,
        totalCount: totalCount ?? this.totalCount,
        isChosen: isChosen ?? this.isChosen,
        recentSenderIds: recentSenderIds ?? this.recentSenderIds,
      );

  static const CONSTRUCTOR = 'messageReaction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
