part of '../tdapi.dart';

class EditMessageCaption extends TdFunction {
  /// Edits the message content caption. Returns the edited message after the edit is completed on the server side
  EditMessageCaption(
      {this.chatId, this.messageId, this.replyMarkup, this.caption});

  /// [chatId] The chat the message belongs to
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// [replyMarkup] The new message reply markup; for bots only
  ReplyMarkup replyMarkup;

  /// [caption] New message content caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  EditMessageCaption.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "caption": this.caption == null ? null : this.caption.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editMessageCaption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
