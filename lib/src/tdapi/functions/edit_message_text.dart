part of '../tdapi.dart';

class EditMessageText extends TdFunction {
  /// Edits the text of a message (or a text of a game message). Returns the edited message after the edit is completed on the server side
  EditMessageText(
      {this.chatId,
      this.messageId,
      this.replyMarkup,
      this.inputMessageContent});

  /// [chatId] The chat the message belongs to
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// [replyMarkup] The new message reply markup; for bots only
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] New text content of the message. Should be of type InputMessageText
  InputMessageContent inputMessageContent;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  EditMessageText.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent == null
          ? null
          : this.inputMessageContent.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editMessageText';

  @override
  String getConstructor() => CONSTRUCTOR;
}
