part of '../tdapi.dart';

class GetForumTopic extends TdFunction {
  /// Returns information about a forum topic
  const GetForumTopic({
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

  GetForumTopic copyWith({
    int? chatId,
    int? messageThreadId,
  }) =>
      GetForumTopic(
        chatId: chatId ?? this.chatId,
        messageThreadId: messageThreadId ?? this.messageThreadId,
      );

  static const CONSTRUCTOR = 'getForumTopic';

  @override
  String getConstructor() => CONSTRUCTOR;
}
