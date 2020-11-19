part of '../tdapi.dart';

class GetChatMessageByDate extends TdFunction {
  /// Returns the last message sent in a chat no later than the specified date
  GetChatMessageByDate({this.chatId, this.date});

  /// [chatId] Chat identifier
  int chatId;

  /// [date] Point in time (Unix timestamp) relative to which to search for messages
  int date;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetChatMessageByDate.fromJson(Map<String, dynamic> json);

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
