part of '../tdapi.dart';

class SetForumTopicNotificationSettings extends TdFunction {
  /// Changes the notification settings of a forum topic
  const SetForumTopicNotificationSettings({
    required this.chatId,
    required this.messageThreadId,
    required this.notificationSettings,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] Message thread identifier of the forum topic
  final int messageThreadId;

  /// [notificationSettings] New notification settings for the forum topic. If the topic is muted for more than 366 days, it is considered to be muted forever
  final ChatNotificationSettings notificationSettings;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "notification_settings": notificationSettings.toJson(),
      "@extra": extra,
    };
  }

  SetForumTopicNotificationSettings copyWith({
    int? chatId,
    int? messageThreadId,
    ChatNotificationSettings? notificationSettings,
  }) =>
      SetForumTopicNotificationSettings(
        chatId: chatId ?? this.chatId,
        messageThreadId: messageThreadId ?? this.messageThreadId,
        notificationSettings: notificationSettings ?? this.notificationSettings,
      );

  static const CONSTRUCTOR = 'setForumTopicNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
