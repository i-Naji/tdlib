part of '../tdapi.dart';

class EditInlineMessageText extends TdFunction {
  /// Edits the text of an inline text or game message sent via a bot; for bots only
  EditInlineMessageText(
      {this.inlineMessageId, this.replyMarkup, this.inputMessageContent});

  /// [inlineMessageId] Inline message identifier
  String inlineMessageId;

  /// [replyMarkup] The new message reply markup
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] New text content of the message. Should be of type InputMessageText
  InputMessageContent inputMessageContent;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  EditInlineMessageText.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent == null
          ? null
          : this.inputMessageContent.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editInlineMessageText';

  @override
  String getConstructor() => CONSTRUCTOR;
}
