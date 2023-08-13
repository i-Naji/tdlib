part of '../tdapi.dart';

class GetChatActiveStories extends TdFunction {
  /// Returns the list of active stories posted by the given chat
  const GetChatActiveStories({
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

  GetChatActiveStories copyWith({
    int? chatId,
  }) =>
      GetChatActiveStories(
        chatId: chatId ?? this.chatId,
      );

  static const CONSTRUCTOR = 'getChatActiveStories';

  @override
  String getConstructor() => CONSTRUCTOR;
}
