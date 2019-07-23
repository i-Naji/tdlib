part of '../tdapi.dart';

class SetChatNotificationSettings extends TdFunction {
  int chatId;
  ChatNotificationSettings notificationSettings;
  dynamic extra;

  /// Changes the notification settings of a chat.
  ///[chatId] Chat identifier .
  /// [notificationSettings] New notification settings for the chat
  SetChatNotificationSettings({this.chatId, this.notificationSettings});

  /// Parse from a json
  SetChatNotificationSettings.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "notification_settings": this.notificationSettings.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "setChatNotificationSettings";

  @override
  String getConstructor() => CONSTRUCTOR;
}
