part of '../tdapi.dart';

class RemoveChatActionBar extends TdFunction {

  /// Removes a chat action bar without any other action
  const RemoveChatActionBar({
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
  
  RemoveChatActionBar copyWith({
    int? chatId,
  }) => RemoveChatActionBar(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'removeChatActionBar';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
