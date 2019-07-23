part of '../tdapi.dart';

class EditMessageReplyMarkup extends TdFunction {
  int chatId;
  int messageId;
  var replyMarkup;
  dynamic extra;

  /// Edits the message reply markup; for bots only. Returns the edited message after the edit is completed on the server side.
  ///[chatId] The chat the message belongs to .
  /// [messageId] Identifier of the message .
  /// [replyMarkup] The new message reply markup
  EditMessageReplyMarkup({this.chatId, this.messageId, this.replyMarkup});

  /// Parse from a json
  EditMessageReplyMarkup.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "reply_markup": this.replyMarkup.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "editMessageReplyMarkup";

  @override
  String getConstructor() => CONSTRUCTOR;
}
