part of '../tdapi.dart';

class PinChatMessage extends TLFunction {
  int chatId;
  int messageId;
  bool disableNotification;
  dynamic extra;

  /// Pins a message in a chat; requires appropriate administrator rights in the group or channel.
  ///[chatId] Identifier of the chat .
  /// [messageId] Identifier of the new pinned message .
  /// [disableNotification] True, if there should be no notification about the pinned message
  PinChatMessage({this.chatId, this.messageId, this.disableNotification});

  /// Parse from a json
  PinChatMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "disable_notification": this.disableNotification,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "pinChatMessage";

  @override
  String getConstructor() => CONSTRUCTOR;
}
