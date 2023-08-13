part of '../tdapi.dart';

class ReportMessageReactions extends TdFunction {
  /// Reports reactions set on a message to the Telegram moderators. Reactions on a message can be reported only if message.can_report_reactions
  const ReportMessageReactions({
    required this.chatId,
    required this.messageId,
    required this.senderId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [senderId] Identifier of the sender, which added the reaction
  final MessageSender senderId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "sender_id": senderId.toJson(),
      "@extra": extra,
    };
  }

  ReportMessageReactions copyWith({
    int? chatId,
    int? messageId,
    MessageSender? senderId,
  }) =>
      ReportMessageReactions(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        senderId: senderId ?? this.senderId,
      );

  static const CONSTRUCTOR = 'reportMessageReactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
