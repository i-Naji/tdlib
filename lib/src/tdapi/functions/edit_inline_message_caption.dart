part of '../tdapi.dart';

class EditInlineMessageCaption extends TdFunction {
  /// Edits the caption of an inline message sent via a bot; for bots only
  EditInlineMessageCaption(
      {this.inlineMessageId, this.replyMarkup, this.caption});

  /// [inlineMessageId] Inline message identifier
  String inlineMessageId;

  /// [replyMarkup] The new message reply markup
  ReplyMarkup replyMarkup;

  /// [caption] New message content caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  EditInlineMessageCaption.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "caption": this.caption == null ? null : this.caption.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editInlineMessageCaption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
