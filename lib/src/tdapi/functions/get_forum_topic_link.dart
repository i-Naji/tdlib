part of '../tdapi.dart';

class GetForumTopicLink extends TdFunction {
  /// Returns an HTTPS link to a topic in a forum chat. This is an offline request
  const GetForumTopicLink({
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

  GetForumTopicLink copyWith({
    int? chatId,
    int? messageThreadId,
  }) =>
      GetForumTopicLink(
        chatId: chatId ?? this.chatId,
        messageThreadId: messageThreadId ?? this.messageThreadId,
      );

  static const CONSTRUCTOR = 'getForumTopicLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
