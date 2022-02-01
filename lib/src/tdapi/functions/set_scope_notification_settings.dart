part of '../tdapi.dart';

class SetScopeNotificationSettings extends TdFunction {

  /// Changes notification settings for chats of a given type
  const SetScopeNotificationSettings({
    required this.scope,
    required this.notificationSettings,
  });
  
  /// [scope] Types of chats for which to change the notification settings 
  final NotificationSettingsScope scope;

  /// [notificationSettings] The new notification settings for the given scope
  final ScopeNotificationSettings notificationSettings;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "scope": scope.toJson(),
      "notification_settings": notificationSettings.toJson(),
      "@extra": extra,
    };
  }
  
  SetScopeNotificationSettings copyWith({
    NotificationSettingsScope? scope,
    ScopeNotificationSettings? notificationSettings,
  }) => SetScopeNotificationSettings(
    scope: scope ?? this.scope,
    notificationSettings: notificationSettings ?? this.notificationSettings,
  );

  static const CONSTRUCTOR = 'setScopeNotificationSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
