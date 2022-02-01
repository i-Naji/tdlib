part of '../tdapi.dart';

class RemoveTopChat extends TdFunction {

  /// Removes a chat from the list of frequently used chats. Supported only if the chat info database is enabled
  const RemoveTopChat({
    required this.category,
    required this.chatId,
  });
  
  /// [category] Category of frequently used chats 
  final TopChatCategory category;

  /// [chatId] Chat identifier
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "category": category.toJson(),
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  RemoveTopChat copyWith({
    TopChatCategory? category,
    int? chatId,
  }) => RemoveTopChat(
    category: category ?? this.category,
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'removeTopChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
