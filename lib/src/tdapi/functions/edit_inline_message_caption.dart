part of '../tdapi.dart';

class EditInlineMessageCaption extends TdFunction {
  String inlineMessageId;
  var replyMarkup;
  FormattedText caption;
  dynamic extra;

  /// Edits the caption of an inline message sent via a bot; for bots only.
  ///[inlineMessageId] Inline message identifier .
  /// [replyMarkup] The new message reply markup .
  /// [caption] New message content caption; 0-GetOption("message_caption_length_max") characters
  EditInlineMessageCaption(
      {this.inlineMessageId, this.replyMarkup, this.caption});

  /// Parse from a json
  EditInlineMessageCaption.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "reply_markup": this.replyMarkup.toJson(),
      "caption": this.caption.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "editInlineMessageCaption";

  @override
  String getConstructor() => CONSTRUCTOR;
}
