part of '../tdapi.dart';

class PinChatMessage extends TdFunction {
  /// Pins a message in a chat; requires can_pin_messages rights or can_edit_messages rights in the channel
  PinChatMessage(
      {this.chatId,
      this.messageId,
      this.disableNotification,
      this.onlyForSelf});

  /// [chatId] Identifier of the chat
  int chatId;

  /// [messageId] Identifier of the new pinned message
  int messageId;

  /// [disableNotification] True, if there should be no notification about the pinned message. Notifications are always disabled in channels and private chats
  bool disableNotification;

  /// [onlyForSelf] True, if the message needs to be pinned for one side only; private chats only
  bool onlyForSelf;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PinChatMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "disable_notification": this.disableNotification,
      "only_for_self": this.onlyForSelf,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'pinChatMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
