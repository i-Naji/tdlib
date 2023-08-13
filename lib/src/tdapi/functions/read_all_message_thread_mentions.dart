part of '../tdapi.dart';

class ReadAllMessageThreadMentions extends TdFunction {
  /// Marks all mentions in a forum topic as read
  const ReadAllMessageThreadMentions({
    required this.chatId,
    required this.messageThreadId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] Message thread identifier in which mentions are marked as read
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

  ReadAllMessageThreadMentions copyWith({
    int? chatId,
    int? messageThreadId,
  }) =>
      ReadAllMessageThreadMentions(
        chatId: chatId ?? this.chatId,
        messageThreadId: messageThreadId ?? this.messageThreadId,
      );

  static const CONSTRUCTOR = 'readAllMessageThreadMentions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
