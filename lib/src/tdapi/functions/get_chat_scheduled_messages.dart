part of '../tdapi.dart';

class GetChatScheduledMessages extends TdFunction {

  /// Returns all scheduled messages in a chat. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id)
  const GetChatScheduledMessages({
    required this.chatId,
  });
  
  /// [chatId] Chat identifier
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  GetChatScheduledMessages copyWith({
    int? chatId,
  }) => GetChatScheduledMessages(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'getChatScheduledMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
