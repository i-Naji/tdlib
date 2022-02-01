part of '../tdapi.dart';

class ReadAllChatMentions extends TdFunction {

  /// Marks all mentions in a chat as read
  const ReadAllChatMentions({
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
  
  ReadAllChatMentions copyWith({
    int? chatId,
  }) => ReadAllChatMentions(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'readAllChatMentions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
