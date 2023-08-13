part of '../tdapi.dart';

class DeleteForumTopic extends TdFunction {
  /// Deletes all messages in a forum topic; requires can_delete_messages administrator right in the supergroup unless the user is creator of the topic, the topic has no messages from other users and has at most 11 messages
  const DeleteForumTopic({
    required this.chatId,
    required this.messageThreadId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [messageThreadId] Message thread identifier of the forum topic
  final int messageThreadId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "@extra": extra,
    };
  }

  DeleteForumTopic copyWith({
    int? chatId,
    int? messageThreadId,
  }) =>
      DeleteForumTopic(
        chatId: chatId ?? this.chatId,
        messageThreadId: messageThreadId ?? this.messageThreadId,
      );

  static const CONSTRUCTOR = 'deleteForumTopic';

  @override
  String getConstructor() => CONSTRUCTOR;
}
