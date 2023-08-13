part of '../tdapi.dart';

class AddMessageReaction extends TdFunction {
  /// Adds a reaction to a message. Use getMessageAvailableReactions to receive the list of available reactions for the message
  const AddMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.reactionType,
    required this.isBig,
    required this.updateRecentReactions,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [reactionType] Type of the reaction to add
  final ReactionType reactionType;

  /// [isBig] Pass true if the reaction is added with a big animation
  final bool isBig;

  /// [updateRecentReactions] Pass true if the reaction needs to be added to recent reactions
  final bool updateRecentReactions;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "reaction_type": reactionType.toJson(),
      "is_big": isBig,
      "update_recent_reactions": updateRecentReactions,
      "@extra": extra,
    };
  }

  AddMessageReaction copyWith({
    int? chatId,
    int? messageId,
    ReactionType? reactionType,
    bool? isBig,
    bool? updateRecentReactions,
  }) =>
      AddMessageReaction(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        reactionType: reactionType ?? this.reactionType,
        isBig: isBig ?? this.isBig,
        updateRecentReactions:
            updateRecentReactions ?? this.updateRecentReactions,
      );

  static const CONSTRUCTOR = 'addMessageReaction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
