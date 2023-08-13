part of '../tdapi.dart';

class SendInlineQueryResultMessage extends TdFunction {
  /// Sends the result of an inline query as a message. Returns the sent message. Always clears a chat draft message
  const SendInlineQueryResultMessage({
    required this.chatId,
    required this.messageThreadId,
    this.replyTo,
    this.options,
    required this.queryId,
    required this.resultId,
    required this.hideViaBot,
  });

  /// [chatId] Target chat
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the message will be sent
  final int messageThreadId;

  /// [replyTo] Identifier of the replied message or story; pass null if none
  final MessageReplyTo? replyTo;

  /// [options] Options to be used to send the message; pass null to use default options
  final MessageSendOptions? options;

  /// [queryId] Identifier of the inline query
  final int queryId;

  /// [resultId] Identifier of the inline result
  final String resultId;

  /// [hideViaBot] Pass true to hide the bot, via which the message is sent. Can be used only for bots getOption("animation_search_bot_username"), getOption("photo_search_bot_username"), and getOption("venue_search_bot_username")
  final bool hideViaBot;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "reply_to": replyTo?.toJson(),
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
    MessageReplyTo? replyTo,
    MessageSendOptions? options,
    int? queryId,
    String? resultId,
    bool? hideViaBot,
  }) =>
      SendInlineQueryResultMessage(
        chatId: chatId ?? this.chatId,
        messageThreadId: messageThreadId ?? this.messageThreadId,
        replyTo: replyTo ?? this.replyTo,
        options: options ?? this.options,
        queryId: queryId ?? this.queryId,
        resultId: resultId ?? this.resultId,
        hideViaBot: hideViaBot ?? this.hideViaBot,
      );

  static const CONSTRUCTOR = 'sendInlineQueryResultMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
