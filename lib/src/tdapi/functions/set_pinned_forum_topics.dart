part of '../tdapi.dart';

class SetPinnedForumTopics extends TdFunction {
  /// Changes the order of pinned forum topics
  const SetPinnedForumTopics({
    required this.chatId,
    required this.messageThreadIds,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadIds] The new list of pinned forum topics
  final List<int> messageThreadIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_ids": messageThreadIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }

  SetPinnedForumTopics copyWith({
    int? chatId,
    List<int>? messageThreadIds,
  }) =>
      SetPinnedForumTopics(
        chatId: chatId ?? this.chatId,
        messageThreadIds: messageThreadIds ?? this.messageThreadIds,
      );

  static const CONSTRUCTOR = 'setPinnedForumTopics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
