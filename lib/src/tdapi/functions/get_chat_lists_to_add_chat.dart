part of '../tdapi.dart';

class GetChatListsToAddChat extends TdFunction {

  /// Returns chat lists to which the chat can be added. This is an offline request
  const GetChatListsToAddChat({
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
  
  GetChatListsToAddChat copyWith({
    int? chatId,
  }) => GetChatListsToAddChat(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'getChatListsToAddChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
