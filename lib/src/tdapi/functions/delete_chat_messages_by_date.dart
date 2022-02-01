part of '../tdapi.dart';

class DeleteChatMessagesByDate extends TdFunction {

  /// Deletes all messages between the specified dates in a chat. Supported only for private chats and basic groups. Messages sent in the last 30 seconds will not be deleted
  const DeleteChatMessagesByDate({
    required this.chatId,
    required this.minDate,
    required this.maxDate,
    required this.revoke,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [minDate] The minimum date of the messages to delete 
  final int minDate;

  /// [maxDate] The maximum date of the messages to delete 
  final int maxDate;

  /// [revoke] Pass true to delete chat messages for all users; private chats only
  final bool revoke;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "min_date": minDate,
      "max_date": maxDate,
      "revoke": revoke,
      "@extra": extra,
    };
  }
  
  DeleteChatMessagesByDate copyWith({
    int? chatId,
    int? minDate,
    int? maxDate,
    bool? revoke,
  }) => DeleteChatMessagesByDate(
    chatId: chatId ?? this.chatId,
    minDate: minDate ?? this.minDate,
    maxDate: maxDate ?? this.maxDate,
    revoke: revoke ?? this.revoke,
  );

  static const CONSTRUCTOR = 'deleteChatMessagesByDate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
