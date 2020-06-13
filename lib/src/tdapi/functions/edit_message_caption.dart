part of '../tdapi.dart';

class EditMessageCaption extends TdFunction {
  int chatId;
  int messageId;
  ReplyMarkup replyMarkup;
  FormattedText caption;
  dynamic extra;

  /// Edits the message content caption. Returns the edited message after the edit is completed on the server side. 
  /// [chatId] The chat the message belongs to. 
  /// [messageId] Identifier of the message . 
  /// [replyMarkup] The new message reply markup; for bots only . 
  /// [caption] New message content caption; 0-GetOption("message_caption_length_max") characters
  EditMessageCaption({this.chatId,
    this.messageId,
    this.replyMarkup,
    this.caption});

  /// Parse from a json
  EditMessageCaption.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "reply_markup": this.replyMarkup.toJson(),
      "caption": this.caption.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editMessageCaption';
}