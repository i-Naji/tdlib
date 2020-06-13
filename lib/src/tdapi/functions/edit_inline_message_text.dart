part of '../tdapi.dart';

class EditInlineMessageText extends TdFunction {
  String inlineMessageId;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;
  dynamic extra;

  /// Edits the text of an inline text or game message sent via a bot; for bots only. 
  /// [inlineMessageId] Inline message identifier . 
  /// [replyMarkup] The new message reply markup . 
  /// [inputMessageContent] New text content of the message. Should be of type InputMessageText
  EditInlineMessageText({this.inlineMessageId,
    this.replyMarkup,
    this.inputMessageContent});

  /// Parse from a json
  EditInlineMessageText.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editInlineMessageText';
}