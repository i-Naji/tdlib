part of '../tdapi.dart';

class GetChatMessageByDate extends TdFunction {
  int chatId;
  int date;
  dynamic extra;

  /// Returns the last message sent in a chat no later than the specified date. 
  /// [chatId] Chat identifier . 
  /// [date] Point in time (Unix timestamp) relative to which to search for messages
  GetChatMessageByDate({this.chatId,
    this.date});

  /// Parse from a json
  GetChatMessageByDate.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "date": this.date,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatMessageByDate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}