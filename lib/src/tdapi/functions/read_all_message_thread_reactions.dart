part of '../tdapi.dart';

class ReadAllMessageThreadReactions extends TdFunction {
  /// Marks all reactions in a forum topic as read
  const ReadAllMessageThreadReactions({
    required this.chatId,
    required this.messageThreadId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] Message thread identifier in which reactions are marked as read
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

  ReadAllMessageThreadReactions copyWith({
    int? chatId,
    int? messageThreadId,
  }) =>
      ReadAllMessageThreadReactions(
        chatId: chatId ?? this.chatId,
        messageThreadId: messageThreadId ?? this.messageThreadId,
      );

  static const CONSTRUCTOR = 'readAllMessageThreadReactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
