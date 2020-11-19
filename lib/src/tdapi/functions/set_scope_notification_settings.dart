part of '../tdapi.dart';

class SetScopeNotificationSettings extends TdFunction {
  /// Changes notification settings for chats of a given type
  SetScopeNotificationSettings({this.scope, this.notificationSettings});

  /// [scope] Types of chats for which to change the notification settings
  NotificationSettingsScope scope;

  /// [notificationSettings] The new notification settings for the given scope
  ScopeNotificationSettings notificationSettings;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetScopeNotificationSettings.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "scope": this.scope == null ? null : this.scope.toJson(),
      "notification_settings": this.notificationSettings == null
          ? null
          : this.notificationSettings.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setScopeNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
