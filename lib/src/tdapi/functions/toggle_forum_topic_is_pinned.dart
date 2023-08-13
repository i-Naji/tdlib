part of '../tdapi.dart';

class ToggleForumTopicIsPinned extends TdFunction {
  /// Changes the pinned state of a forum topic; requires can_manage_topics administrator right in the supergroup. There can be up to getOption("pinned_forum_topic_count_max") pinned forum topics
  const ToggleForumTopicIsPinned({
    required this.chatId,
    required this.messageThreadId,
    required this.isPinned,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] Message thread identifier of the forum topic
  final int messageThreadId;

  /// [isPinned] Pass true to pin the topic; pass false to unpin it
  final bool isPinned;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "is_pinned": isPinned,
      "@extra": extra,
    };
  }

  ToggleForumTopicIsPinned copyWith({
    int? chatId,
    int? messageThreadId,
    bool? isPinned,
  }) =>
      ToggleForumTopicIsPinned(
        chatId: chatId ?? this.chatId,
        messageThreadId: messageThreadId ?? this.messageThreadId,
        isPinned: isPinned ?? this.isPinned,
      );

  static const CONSTRUCTOR = 'toggleForumTopicIsPinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}
