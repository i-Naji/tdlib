part of '../tdapi.dart';

class ViewMessages extends TdFunction {

  /// Informs TDLib that messages are being viewed by the user. Sponsored messages must be marked as viewed only when the entire text of the message is shown on the screen (excluding the button). Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels)
  const ViewMessages({
    required this.chatId,
    required this.messageThreadId,
    required this.messageIds,
    required this.forceRead,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the messages are being viewed
  final int messageThreadId;

  /// [messageIds] The identifiers of the messages being viewed
  final List<int> messageIds;

  /// [forceRead] True, if messages in closed chats must be marked as read by the request
  final bool forceRead;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "message_ids": messageIds.map((i) => i).toList(),
      "force_read": forceRead,
      "@extra": extra,
    };
  }
  
  ViewMessages copyWith({
    int? chatId,
    int? messageThreadId,
    List<int>? messageIds,
    bool? forceRead,
  }) => ViewMessages(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    messageIds: messageIds ?? this.messageIds,
    forceRead: forceRead ?? this.forceRead,
  );

  static const CONSTRUCTOR = 'viewMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
