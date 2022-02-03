part of '../tdapi.dart';

class EditInlineMessageReplyMarkup extends TdFunction {

  /// Edits the reply markup of an inline message sent via a bot; for bots only
  const EditInlineMessageReplyMarkup({
    required this.inlineMessageId,
    this.replyMarkup,
  });
  
  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": inlineMessageId,
      "reply_markup": replyMarkup?.toJson(),
      "@extra": extra,
    };
  }
  
  EditInlineMessageReplyMarkup copyWith({
    String? inlineMessageId,
    ReplyMarkup? replyMarkup,
  }) => EditInlineMessageReplyMarkup(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
  );

  static const CONSTRUCTOR = 'editInlineMessageReplyMarkup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
