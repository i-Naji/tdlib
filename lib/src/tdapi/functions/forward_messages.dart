part of '../tdapi.dart';

class ForwardMessages extends TdFunction {

  /// Forwards previously sent messages. Returns the forwarded messages in the same order as the message identifiers passed in message_ids. If a message can't be forwarded, null will be returned instead of the message
  const ForwardMessages({
    required this.chatId,
    required this.fromChatId,
    required this.messageIds,
    this.options,
    required this.sendCopy,
    required this.removeCaption,
    required this.onlyPreview,
  });
  
  /// [chatId] Identifier of the chat to which to forward messages
  final int chatId;

  /// [fromChatId] Identifier of the chat from which to forward messages
  final int fromChatId;

  /// [messageIds] Identifiers of the messages to forward. Message identifiers must be in a strictly increasing order. At most 100 messages can be forwarded simultaneously
  final List<int> messageIds;

  /// [options] Options to be used to send the messages; pass null to use default options
  final MessageSendOptions? options;

  /// [sendCopy] If true, content of the messages will be copied without reference to the original sender. Always true if the messages are forwarded to a secret chat or are local
  final bool sendCopy;

  /// [removeCaption] If true, media caption of message copies will be removed. Ignored if send_copy is false
  final bool removeCaption;

  /// [onlyPreview] If true, messages will not be forwarded and instead fake messages will be returned
  final bool onlyPreview;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "from_chat_id": fromChatId,
      "message_ids": messageIds.map((i) => i).toList(),
      "options": options?.toJson(),
      "send_copy": sendCopy,
      "remove_caption": removeCaption,
      "only_preview": onlyPreview,
      "@extra": extra,
    };
  }
  
  ForwardMessages copyWith({
    int? chatId,
    int? fromChatId,
    List<int>? messageIds,
    MessageSendOptions? options,
    bool? sendCopy,
    bool? removeCaption,
    bool? onlyPreview,
  }) => ForwardMessages(
    chatId: chatId ?? this.chatId,
    fromChatId: fromChatId ?? this.fromChatId,
    messageIds: messageIds ?? this.messageIds,
    options: options ?? this.options,
    sendCopy: sendCopy ?? this.sendCopy,
    removeCaption: removeCaption ?? this.removeCaption,
    onlyPreview: onlyPreview ?? this.onlyPreview,
  );

  static const CONSTRUCTOR = 'forwardMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
