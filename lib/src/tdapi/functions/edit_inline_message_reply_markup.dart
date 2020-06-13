part of '../tdapi.dart';

class EditInlineMessageReplyMarkup extends TdFunction {
  String inlineMessageId;
  ReplyMarkup replyMarkup;
  dynamic extra;

  /// Edits the reply markup of an inline message sent via a bot; for bots only. 
  /// [inlineMessageId] Inline message identifier . 
  /// [replyMarkup] The new message reply markup
  EditInlineMessageReplyMarkup({this.inlineMessageId,
    this.replyMarkup});

  /// Parse from a json
  EditInlineMessageReplyMarkup.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "reply_markup": this.replyMarkup.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editInlineMessageReplyMarkup';
}