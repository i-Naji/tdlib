part of '../tdapi.dart';

class OpenChat extends TdFunction {

  /// Informs TDLib that the chat is opened by the user. Many useful activities depend on the chat being opened or closed (e.g., in supergroups and channels all updates are received only for opened chats)
  const OpenChat({
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
  
  OpenChat copyWith({
    int? chatId,
  }) => OpenChat(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'openChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
