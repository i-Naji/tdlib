part of '../tdapi.dart';

class ShareChatWithBot extends TdFunction {
  /// Shares a chat after pressing a keyboardButtonTypeRequestChat button with the bot
  const ShareChatWithBot({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
    required this.sharedChatId,
    required this.onlyCheck,
  });

  /// [chatId] Identifier of the chat with the bot
  final int chatId;

  /// [messageId] Identifier of the message with the button
  final int messageId;

  /// [buttonId] Identifier of the button
  final int buttonId;

  /// [sharedChatId] Identifier of the shared chat
  final int sharedChatId;

  /// [onlyCheck] Pass true to check that the chat can be shared by the button instead of actually sharing it. Doesn't check bot_is_member and bot_administrator_rights restrictions.. If the bot must be a member, then all chats from getGroupsInCommon and all chats, where the user can add the bot, are suitable. In the latter case the bot will be automatically added to the chat.. If the bot must be an administrator, then all chats, where the bot already has requested rights or can be added to administrators by the user, are suitable. In the latter case the bot will be automatically granted requested rights
  final bool onlyCheck;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "button_id": buttonId,
      "shared_chat_id": sharedChatId,
      "only_check": onlyCheck,
      "@extra": extra,
    };
  }

  ShareChatWithBot copyWith({
    int? chatId,
    int? messageId,
    int? buttonId,
    int? sharedChatId,
    bool? onlyCheck,
  }) =>
      ShareChatWithBot(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        buttonId: buttonId ?? this.buttonId,
        sharedChatId: sharedChatId ?? this.sharedChatId,
        onlyCheck: onlyCheck ?? this.onlyCheck,
      );

  static const CONSTRUCTOR = 'shareChatWithBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}
