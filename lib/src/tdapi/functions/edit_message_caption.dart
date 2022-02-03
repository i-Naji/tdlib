part of '../tdapi.dart';

class EditMessageCaption extends TdFunction {

  /// Edits the message content caption. Returns the edited message after the edit is completed on the server side
  const EditMessageCaption({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    this.caption,
  });
  
  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots only
  final ReplyMarkup? replyMarkup;

  /// [caption] New message content caption; 0-GetOption("message_caption_length_max") characters; pass null to remove caption
  final FormattedText? caption;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "reply_markup": replyMarkup?.toJson(),
      "caption": caption?.toJson(),
      "@extra": extra,
    };
  }
  
  EditMessageCaption copyWith({
    int? chatId,
    int? messageId,
    ReplyMarkup? replyMarkup,
    FormattedText? caption,
  }) => EditMessageCaption(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    caption: caption ?? this.caption,
  );

  static const CONSTRUCTOR = 'editMessageCaption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
