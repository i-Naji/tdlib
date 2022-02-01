part of '../tdapi.dart';

class GetChatAvailableMessageSenders extends TdFunction {

  /// Returns list of message sender identifiers, which can be used to send messages in a chat
  const GetChatAvailableMessageSenders({
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
  
  GetChatAvailableMessageSenders copyWith({
    int? chatId,
  }) => GetChatAvailableMessageSenders(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'getChatAvailableMessageSenders';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
