part of '../tdapi.dart';

class EditMessageReplyMarkup extends TdFunction {

  /// Edits the message reply markup; for bots only. Returns the edited message after the edit is completed on the server side
  const EditMessageReplyMarkup({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
  });
  
  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "reply_markup": replyMarkup?.toJson(),
      "@extra": extra,
    };
  }
  
  EditMessageReplyMarkup copyWith({
    int? chatId,
    int? messageId,
    ReplyMarkup? replyMarkup,
  }) => EditMessageReplyMarkup(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
  );

  static const CONSTRUCTOR = 'editMessageReplyMarkup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
