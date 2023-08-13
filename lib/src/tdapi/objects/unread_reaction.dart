part of '../tdapi.dart';

class UnreadReaction extends TdObject {
  /// Contains information about an unread reaction to a message
  const UnreadReaction({
    required this.type,
    required this.senderId,
    required this.isBig,
  });

  /// [type] Type of the reaction
  final ReactionType type;

  /// [senderId] Identifier of the sender, added the reaction
  final MessageSender senderId;

  /// [isBig] True, if the reaction was added with a big animation
  final bool isBig;

  /// Parse from a json
  factory UnreadReaction.fromJson(Map<String, dynamic> json) => UnreadReaction(
        type: ReactionType.fromJson(json['type']),
        senderId: MessageSender.fromJson(json['sender_id']),
        isBig: json['is_big'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "sender_id": senderId.toJson(),
      "is_big": isBig,
    };
  }

  UnreadReaction copyWith({
    ReactionType? type,
    MessageSender? senderId,
    bool? isBig,
  }) =>
      UnreadReaction(
        type: type ?? this.type,
        senderId: senderId ?? this.senderId,
        isBig: isBig ?? this.isBig,
      );

  static const CONSTRUCTOR = 'unreadReaction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
