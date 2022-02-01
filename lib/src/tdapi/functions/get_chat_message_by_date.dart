part of '../tdapi.dart';

class GetChatMessageByDate extends TdFunction {

  /// Returns the last message sent in a chat no later than the specified date
  const GetChatMessageByDate({
    required this.chatId,
    required this.date,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [date] Point in time (Unix timestamp) relative to which to search for messages
  final int date;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "date": date,
      "@extra": extra,
    };
  }
  
  GetChatMessageByDate copyWith({
    int? chatId,
    int? date,
  }) => GetChatMessageByDate(
    chatId: chatId ?? this.chatId,
    date: date ?? this.date,
  );

  static const CONSTRUCTOR = 'getChatMessageByDate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
