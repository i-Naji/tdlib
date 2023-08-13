part of '../tdapi.dart';

class UnpinAllMessageThreadMessages extends TdFunction {
  /// Removes all pinned messages from a forum topic; requires can_pin_messages rights in the supergroup
  const UnpinAllMessageThreadMessages({
    required this.chatId,
    required this.messageThreadId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [messageThreadId] Message thread identifier in which messages will be unpinned
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

  UnpinAllMessageThreadMessages copyWith({
    int? chatId,
    int? messageThreadId,
  }) =>
      UnpinAllMessageThreadMessages(
        chatId: chatId ?? this.chatId,
        messageThreadId: messageThreadId ?? this.messageThreadId,
      );

  static const CONSTRUCTOR = 'unpinAllMessageThreadMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
