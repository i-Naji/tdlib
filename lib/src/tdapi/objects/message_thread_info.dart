part of '../tdapi.dart';

class MessageThreadInfo extends TdObject {

  /// Contains information about a message thread
  const MessageThreadInfo({
    required this.chatId,
    required this.messageThreadId,
    required this.replyInfo,
    required this.unreadMessageCount,
    required this.messages,
    this.draftMessage,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Identifier of the chat to which the message thread belongs
  final int chatId;

  /// [messageThreadId] Message thread identifier, unique within the chat
  final int messageThreadId;

  /// [replyInfo] Information about the message thread
  final MessageReplyInfo replyInfo;

  /// [unreadMessageCount] Approximate number of unread messages in the message thread
  final int unreadMessageCount;

  /// [messages] The messages from which the thread starts. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id)
  final List<Message> messages;

  /// [draftMessage] A draft of a message in the message thread; may be null
  final DraftMessage? draftMessage;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageThreadInfo.fromJson(Map<String, dynamic> json) => MessageThreadInfo(
    chatId: json['chat_id'],
    messageThreadId: json['message_thread_id'],
    replyInfo: MessageReplyInfo.fromJson(json['reply_info']),
    unreadMessageCount: json['unread_message_count'],
    messages: List<Message>.from((json['messages'] ?? []).map((item) => Message.fromJson(item)).toList()),
    draftMessage: json['draft_message'] == null ? null : DraftMessage.fromJson(json['draft_message']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "reply_info": replyInfo.toJson(),
      "unread_message_count": unreadMessageCount,
      "messages": messages.map((i) => i.toJson()).toList(),
      "draft_message": draftMessage?.toJson(),
    };
  }
  
  MessageThreadInfo copyWith({
    int? chatId,
    int? messageThreadId,
    MessageReplyInfo? replyInfo,
    int? unreadMessageCount,
    List<Message>? messages,
    DraftMessage? draftMessage,
    dynamic extra,
    int? clientId,
  }) => MessageThreadInfo(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    replyInfo: replyInfo ?? this.replyInfo,
    unreadMessageCount: unreadMessageCount ?? this.unreadMessageCount,
    messages: messages ?? this.messages,
    draftMessage: draftMessage ?? this.draftMessage,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'messageThreadInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
