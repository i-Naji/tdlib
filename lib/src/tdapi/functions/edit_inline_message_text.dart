part of '../tdapi.dart';

class EditInlineMessageText extends TdFunction {

  /// Edits the text of an inline text or game message sent via a bot; for bots only
  const EditInlineMessageText({
    required this.inlineMessageId,
    this.replyMarkup,
    required this.inputMessageContent,
  });
  
  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New text content of the message. Must be of type inputMessageText
  final InputMessageContent inputMessageContent;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": inlineMessageId,
      "reply_markup": replyMarkup?.toJson(),
      "input_message_content": inputMessageContent.toJson(),
      "@extra": extra,
    };
  }
  
  EditInlineMessageText copyWith({
    String? inlineMessageId,
    ReplyMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) => EditInlineMessageText(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const CONSTRUCTOR = 'editInlineMessageText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
