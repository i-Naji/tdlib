part of '../tdapi.dart';

class DeleteChatReplyMarkup extends TLFunction {
  int chatId;
  int messageId;
  dynamic extra;

  /// Deletes the default reply markup from a chat. Must be called after a one-time keyboard or a ForceReply reply markup has been used. UpdateChatReplyMarkup will be sent if the reply markup will be changed.
  ///[chatId] Chat identifier.
  /// [messageId] The message identifier of the used keyboard
  DeleteChatReplyMarkup({this.chatId, this.messageId});

  /// Parse from a json
  DeleteChatReplyMarkup.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "deleteChatReplyMarkup";

  @override
  String getConstructor() => CONSTRUCTOR;
}
