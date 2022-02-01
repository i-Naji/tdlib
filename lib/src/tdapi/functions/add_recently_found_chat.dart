part of '../tdapi.dart';

class AddRecentlyFoundChat extends TdFunction {

  /// Adds a chat to the list of recently found chats. The chat is added to the beginning of the list. If the chat is already in the list, it will be removed from the list first
  const AddRecentlyFoundChat({
    required this.chatId,
  });
  
  /// [chatId] Identifier of the chat to add
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  AddRecentlyFoundChat copyWith({
    int? chatId,
  }) => AddRecentlyFoundChat(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'addRecentlyFoundChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
