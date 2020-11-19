part of '../tdapi.dart';

class SendMessage extends TdFunction {
  /// Sends a message. Returns the sent message
  SendMessage(
      {this.chatId,
      this.messageThreadId,
      this.replyToMessageId,
      this.options,
      this.replyMarkup,
      this.inputMessageContent});

  /// [chatId] Target chat
  int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the message will be sent
  int messageThreadId;

  /// [replyToMessageId] Identifier of the message to reply to or 0
  int replyToMessageId;

  /// [options] Options to be used to send the message
  MessageSendOptions options;

  /// [replyMarkup] Markup for replying to the message; for bots only
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] The content of the message to be sent
  InputMessageContent inputMessageContent;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SendMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_thread_id": this.messageThreadId,
      "reply_to_message_id": this.replyToMessageId,
      "options": this.options == null ? null : this.options.toJson(),
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent == null
          ? null
          : this.inputMessageContent.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
