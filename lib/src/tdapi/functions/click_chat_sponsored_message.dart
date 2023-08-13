part of '../tdapi.dart';

class ClickChatSponsoredMessage extends TdFunction {
  /// Informs TDLib that the user opened the sponsored chat via the button, the name, the photo, or a mention in the sponsored message
  const ClickChatSponsoredMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier of the sponsored message
  final int chatId;

  /// [messageId] Identifier of the sponsored message
  final int messageId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
    };
  }

  ClickChatSponsoredMessage copyWith({
    int? chatId,
    int? messageId,
  }) =>
      ClickChatSponsoredMessage(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
      );

  static const CONSTRUCTOR = 'clickChatSponsoredMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
