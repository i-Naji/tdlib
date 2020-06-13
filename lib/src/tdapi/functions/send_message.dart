part of '../tdapi.dart';

class SendMessage extends TdFunction {
  int chatId;
  int replyToMessageId;
  SendMessageOptions options;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;
  dynamic extra;

  /// Sends a message. Returns the sent message. 
  /// [chatId] Target chat. 
  /// [replyToMessageId] Identifier of the message to reply to or 0. 
  /// [options] Options to be used to send the message. 
  /// [replyMarkup] Markup for replying to the message; for bots only. 
  /// [inputMessageContent] The content of the message to be sent
  SendMessage({this.chatId,
    this.replyToMessageId,
    this.options,
    this.replyMarkup,
    this.inputMessageContent});

  /// Parse from a json
  SendMessage.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "reply_to_message_id": this.replyToMessageId,
      "options": this.options.toJson(),
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendMessage';
}