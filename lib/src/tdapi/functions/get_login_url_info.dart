part of '../tdapi.dart';

class GetLoginUrlInfo extends TdFunction {
  /// Returns information about a button of type inlineKeyboardButtonTypeLoginUrl. The method needs to be called when the user presses the button
  GetLoginUrlInfo({this.chatId, this.messageId, this.buttonId});

  /// [chatId] Chat identifier of the message with the button
  int chatId;

  /// [messageId] Message identifier of the message with the button
  int messageId;

  /// [buttonId] Button identifier
  int buttonId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetLoginUrlInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "button_id": this.buttonId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLoginUrlInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
