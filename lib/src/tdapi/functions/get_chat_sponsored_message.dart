part of '../tdapi.dart';

class GetChatSponsoredMessage extends TdFunction {

  /// Returns sponsored message to be shown in a chat; for channel chats only. Returns a 404 error if there is no sponsored message in the chat
  const GetChatSponsoredMessage({
    required this.chatId,
  });
  
  /// [chatId] Identifier of the chat
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  GetChatSponsoredMessage copyWith({
    int? chatId,
  }) => GetChatSponsoredMessage(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'getChatSponsoredMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
