part of '../tdapi.dart';

class GetChatSponsoredMessages extends TdFunction {
  /// Returns sponsored messages to be shown in a chat; for channel chats only
  const GetChatSponsoredMessages({
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

  GetChatSponsoredMessages copyWith({
    int? chatId,
  }) =>
      GetChatSponsoredMessages(
        chatId: chatId ?? this.chatId,
      );

  static const CONSTRUCTOR = 'getChatSponsoredMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
