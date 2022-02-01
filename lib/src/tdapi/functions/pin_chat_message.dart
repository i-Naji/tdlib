part of '../tdapi.dart';

class PinChatMessage extends TdFunction {

  /// Pins a message in a chat; requires can_pin_messages rights or can_edit_messages rights in the channel
  const PinChatMessage({
    required this.chatId,
    required this.messageId,
    required this.disableNotification,
    required this.onlyForSelf,
  });
  
  /// [chatId] Identifier of the chat
  final int chatId;

  /// [messageId] Identifier of the new pinned message
  final int messageId;

  /// [disableNotification] True, if there must be no notification about the pinned message. Notifications are always disabled in channels and private chats
  final bool disableNotification;

  /// [onlyForSelf] True, if the message needs to be pinned for one side only; private chats only
  final bool onlyForSelf;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "disable_notification": disableNotification,
      "only_for_self": onlyForSelf,
      "@extra": extra,
    };
  }
  
  PinChatMessage copyWith({
    int? chatId,
    int? messageId,
    bool? disableNotification,
    bool? onlyForSelf,
  }) => PinChatMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    disableNotification: disableNotification ?? this.disableNotification,
    onlyForSelf: onlyForSelf ?? this.onlyForSelf,
  );

  static const CONSTRUCTOR = 'pinChatMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
