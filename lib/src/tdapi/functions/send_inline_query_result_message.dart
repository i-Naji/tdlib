part of '../tdapi.dart';

class SendInlineQueryResultMessage extends TdFunction {

  /// Sends the result of an inline query as a message. Returns the sent message. Always clears a chat draft message
  const SendInlineQueryResultMessage({
    required this.chatId,
    required this.messageThreadId,
    required this.replyToMessageId,
    this.options,
    required this.queryId,
    required this.resultId,
    required this.hideViaBot,
  });
  
  /// [chatId] Target chat
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the message will be sent
  final int messageThreadId;

  /// [replyToMessageId] Identifier of a message to reply to or 0
  final int replyToMessageId;

  /// [options] Options to be used to send the message; pass null to use default options
  final MessageSendOptions? options;

  /// [queryId] Identifier of the inline query
  final int queryId;

  /// [resultId] Identifier of the inline result
  final String resultId;

  /// [hideViaBot] If true, there will be no mention of a bot, via which the message is sent. Can be used only for bots GetOption("animation_search_bot_username"), GetOption("photo_search_bot_username") and GetOption("venue_search_bot_username")
  final bool hideViaBot;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "reply_to_message_id": replyToMessageId,
      "options": options?.toJson(),
      "query_id": queryId,
      "result_id": resultId,
      "hide_via_bot": hideViaBot,
      "@extra": extra,
    };
  }
  
  SendInlineQueryResultMessage copyWith({
    int? chatId,
    int? messageThreadId,
    int? replyToMessageId,
    MessageSendOptions? options,
    int? queryId,
    String? resultId,
    bool? hideViaBot,
  }) => SendInlineQueryResultMessage(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    replyToMessageId: replyToMessageId ?? this.replyToMessageId,
    options: options ?? this.options,
    queryId: queryId ?? this.queryId,
    resultId: resultId ?? this.resultId,
    hideViaBot: hideViaBot ?? this.hideViaBot,
  );

  static const CONSTRUCTOR = 'sendInlineQueryResultMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
