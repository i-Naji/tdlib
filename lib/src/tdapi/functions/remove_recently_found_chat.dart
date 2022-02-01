part of '../tdapi.dart';

class RemoveRecentlyFoundChat extends TdFunction {

  /// Removes a chat from the list of recently found chats
  const RemoveRecentlyFoundChat({
    required this.chatId,
  });
  
  /// [chatId] Identifier of the chat to be removed
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  RemoveRecentlyFoundChat copyWith({
    int? chatId,
  }) => RemoveRecentlyFoundChat(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'removeRecentlyFoundChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
