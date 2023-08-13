part of '../tdapi.dart';

class ReadAllChatReactions extends TdFunction {
  /// Marks all reactions in a chat or a forum topic as read
  const ReadAllChatReactions({
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

  ReadAllChatReactions copyWith({
    int? chatId,
  }) =>
      ReadAllChatReactions(
        chatId: chatId ?? this.chatId,
      );

  static const CONSTRUCTOR = 'readAllChatReactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
