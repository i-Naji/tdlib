part of '../tdapi.dart';

class CloseChat extends TdFunction {
  int chatId;
  dynamic extra;

  /// Informs TDLib that the chat is closed by the user. Many useful activities depend on the chat being opened or closed. 
  /// [chatId] Chat identifier
  CloseChat({this.chatId});

  /// Parse from a json
  CloseChat.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'closeChat';
}