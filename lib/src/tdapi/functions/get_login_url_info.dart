part of '../tdapi.dart';

class GetLoginUrlInfo extends TdFunction {
  int chatId;
  int messageId;
  int buttonId;
  dynamic extra;

  /// Returns information about a button of type inlineKeyboardButtonTypeLoginUrl. The method needs to be called when the user presses the button. 
  /// [chatId] Chat identifier of the message with the button. 
  /// [messageId] Message identifier of the message with the button . 
  /// [buttonId] Button identifier
  GetLoginUrlInfo({this.chatId,
    this.messageId,
    this.buttonId});

  /// Parse from a json
  GetLoginUrlInfo.fromJson(Map<String, dynamic> json) ;

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
}