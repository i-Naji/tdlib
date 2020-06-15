part of '../tdapi.dart';

class GetChatListsToAddChat extends TdFunction {
  int chatId;
  dynamic extra;

  /// Returns chat lists to which the chat can be added. This is an offline request. 
  /// [chatId] Chat identifier
  GetChatListsToAddChat({this.chatId});

  /// Parse from a json
  GetChatListsToAddChat.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatListsToAddChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}