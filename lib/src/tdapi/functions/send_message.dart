part of '../tdapi.dart';

class SendMessage extends TdFunction {

  /// Sends a message. Returns the sent message
  const SendMessage({
    required this.chatId,
    required this.messageThreadId,
    required this.replyToMessageId,
    this.options,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// [chatId] Target chat
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the message will be sent
  final int messageThreadId;

  /// [replyToMessageId] Identifier of the message to reply to or 0
  final int replyToMessageId;

  /// [options] Options to be used to send the message; pass null to use default options
  final MessageSendOptions? options;

  /// [replyMarkup] Markup for replying to the message; pass null if none; for bots only
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent
  final InputMessageContent inputMessageContent;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "reply_to_message_id": replyToMessageId,
      "options": options?.toJson(),
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
      "@extra": extra,
    };
  }
  
  SendMessage copyWith({
    int? chatId,
    int? messageThreadId,
    int? replyToMessageId,
    MessageSendOptions? options,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => SendMessage(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    replyToMessageId: replyToMessageId ?? this.replyToMessageId,
    options: options ?? this.options,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const CONSTRUCTOR = 'sendMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
