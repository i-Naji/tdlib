part of '../tdapi.dart';

class JoinChat extends TdFunction {

  /// Adds the current user as a new member to a chat. Private and secret chats can't be joined using this method
  const JoinChat({
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
  
  JoinChat copyWith({
    int? chatId,
  }) => JoinChat(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'joinChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
