part of '../tdapi.dart';

class ViewMessages extends TdFunction {
  /// Informs TDLib that messages are being viewed by the user. Sponsored messages must be marked as viewed only when the entire text of the message is shown on the screen (excluding the button).. Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels)
  const ViewMessages({
    required this.chatId,
    required this.messageIds,
    this.source,
    required this.forceRead,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageIds] The identifiers of the messages being viewed
  final List<int> messageIds;

  /// [source] Source of the message view; pass null to guess the source based on chat open state
  final MessageSource? source;

  /// [forceRead] Pass true to mark as read the specified messages even the chat is closed
  final bool forceRead;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_ids": messageIds.map((i) => i).toList(),
      "source": source?.toJson(),
      "force_read": forceRead,
      "@extra": extra,
    };
  }

  ViewMessages copyWith({
    int? chatId,
    List<int>? messageIds,
    MessageSource? source,
    bool? forceRead,
  }) =>
      ViewMessages(
        chatId: chatId ?? this.chatId,
        messageIds: messageIds ?? this.messageIds,
        source: source ?? this.source,
        forceRead: forceRead ?? this.forceRead,
      );

  static const CONSTRUCTOR = 'viewMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
