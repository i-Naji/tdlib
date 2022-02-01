part of '../tdapi.dart';

class SetChatNotificationSettings extends TdFunction {

  /// Changes the notification settings of a chat. Notification settings of a chat with the current user (Saved Messages) can't be changed
  const SetChatNotificationSettings({
    required this.chatId,
    required this.notificationSettings,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [notificationSettings] New notification settings for the chat. If the chat is muted for more than 1 week, it is considered to be muted forever
  final ChatNotificationSettings notificationSettings;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "notification_settings": notificationSettings.toJson(),
      "@extra": extra,
    };
  }
  
  SetChatNotificationSettings copyWith({
    int? chatId,
    ChatNotificationSettings? notificationSettings,
  }) => SetChatNotificationSettings(
    chatId: chatId ?? this.chatId,
    notificationSettings: notificationSettings ?? this.notificationSettings,
  );

  static const CONSTRUCTOR = 'setChatNotificationSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
