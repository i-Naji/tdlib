part of '../tdapi.dart';

class EditInlineMessageReplyMarkup extends TdFunction {
  /// Edits the reply markup of an inline message sent via a bot; for bots only
  EditInlineMessageReplyMarkup({this.inlineMessageId, this.replyMarkup});

  /// [inlineMessageId] Inline message identifier
  String inlineMessageId;

  /// [replyMarkup] The new message reply markup
  ReplyMarkup replyMarkup;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  EditInlineMessageReplyMarkup.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editInlineMessageReplyMarkup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
