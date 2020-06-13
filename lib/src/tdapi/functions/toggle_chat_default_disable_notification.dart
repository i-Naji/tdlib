part of '../tdapi.dart';

class ToggleChatDefaultDisableNotification extends TdFunction {
  int chatId;
  bool defaultDisableNotification;
  dynamic extra;

  /// Changes the value of the default disable_notification parameter, used when a message is sent to a chat. 
  /// [chatId] Chat identifier . 
  /// [defaultDisableNotification] New value of default_disable_notification
  ToggleChatDefaultDisableNotification({this.chatId,
    this.defaultDisableNotification});

  /// Parse from a json
  ToggleChatDefaultDisableNotification.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "default_disable_notification": this.defaultDisableNotification,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'toggleChatDefaultDisableNotification';
}