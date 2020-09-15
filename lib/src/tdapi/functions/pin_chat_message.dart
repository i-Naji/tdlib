part of '../tdapi.dart';

class PinChatMessage extends TdFunction {

  /// Pins a message in a chat; requires can_pin_messages rights
  PinChatMessage({this.chatId,
    this.messageId,
    this.disableNotification});

  /// [chatId] Identifier of the chat 
  int chatId;

  /// [messageId] Identifier of the new pinned message 
  int messageId;

  /// [disableNotification] True, if there should be no notification about the pinned message
  bool disableNotification;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PinChatMessage.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "disable_notification": this.disableNotification,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'pinChatMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}