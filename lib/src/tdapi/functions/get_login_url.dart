part of '../tdapi.dart';

class GetLoginUrl extends TdFunction {
  /// Returns an HTTP URL which can be used to automatically authorize the user on a website after clicking an inline button of type inlineKeyboardButtonTypeLoginUrl.. Use the method getLoginUrlInfo to find whether a prior user confirmation is needed. If an error is returned, then the button must be handled as an ordinary URL button
  GetLoginUrl(
      {this.chatId, this.messageId, this.buttonId, this.allowWriteAccess});

  /// [chatId] Chat identifier of the message with the button
  int chatId;

  /// [messageId] Message identifier of the message with the button
  int messageId;

  /// [buttonId] Button identifier
  int buttonId;

  /// [allowWriteAccess] True, if the user allowed the bot to send them messages
  bool allowWriteAccess;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetLoginUrl.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "button_id": this.buttonId,
      "allow_write_access": this.allowWriteAccess,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLoginUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
