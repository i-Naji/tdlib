part of '../tdapi.dart';

class GetChatScheduledMessages extends TdFunction {
  int chatId;
  dynamic extra;

  /// Returns all scheduled messages in a chat. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id). 
  /// [chatId] Chat identifier
  GetChatScheduledMessages({this.chatId});

  /// Parse from a json
  GetChatScheduledMessages.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatScheduledMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}