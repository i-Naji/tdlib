part of '../tdapi.dart';

class RemoveMessageReaction extends TdFunction {
  /// Removes a reaction from a message. A chosen reaction can always be removed
  const RemoveMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.reactionType,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [reactionType] Type of the reaction to remove
  final ReactionType reactionType;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "reaction_type": reactionType.toJson(),
      "@extra": extra,
    };
  }

  RemoveMessageReaction copyWith({
    int? chatId,
    int? messageId,
    ReactionType? reactionType,
  }) =>
      RemoveMessageReaction(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        reactionType: reactionType ?? this.reactionType,
      );

  static const CONSTRUCTOR = 'removeMessageReaction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
