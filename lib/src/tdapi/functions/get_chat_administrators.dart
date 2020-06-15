part of '../tdapi.dart';

class GetChatAdministrators extends TdFunction {
  int chatId;
  dynamic extra;

  /// Returns a list of administrators of the chat with their custom titles. 
  /// [chatId] Chat identifier
  GetChatAdministrators({this.chatId});

  /// Parse from a json
  GetChatAdministrators.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatAdministrators';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}