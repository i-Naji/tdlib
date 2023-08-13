part of '../tdapi.dart';

class ShareUserWithBot extends TdFunction {
  /// Shares a user after pressing a keyboardButtonTypeRequestUser button with the bot
  const ShareUserWithBot({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
    required this.sharedUserId,
    required this.onlyCheck,
  });

  /// [chatId] Identifier of the chat with the bot
  final int chatId;

  /// [messageId] Identifier of the message with the button
  final int messageId;

  /// [buttonId] Identifier of the button
  final int buttonId;

  /// [sharedUserId] Identifier of the shared user
  final int sharedUserId;

  /// [onlyCheck] Pass true to check that the user can be shared by the button instead of actually sharing them
  final bool onlyCheck;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "button_id": buttonId,
      "shared_user_id": sharedUserId,
      "only_check": onlyCheck,
      "@extra": extra,
    };
  }

  ShareUserWithBot copyWith({
    int? chatId,
    int? messageId,
    int? buttonId,
    int? sharedUserId,
    bool? onlyCheck,
  }) =>
      ShareUserWithBot(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        buttonId: buttonId ?? this.buttonId,
        sharedUserId: sharedUserId ?? this.sharedUserId,
        onlyCheck: onlyCheck ?? this.onlyCheck,
      );

  static const CONSTRUCTOR = 'shareUserWithBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}
