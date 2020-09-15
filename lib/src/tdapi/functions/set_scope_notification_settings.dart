part of '../tdapi.dart';

class SetScopeNotificationSettings extends TdFunction {
  NotificationSettingsScope scope;
  ScopeNotificationSettings notificationSettings;
  dynamic extra;

  /// Changes notification settings for chats of a given type. 
  /// [scope] Types of chats for which to change the notification settings . 
  /// [notificationSettings] The new notification settings for the given scope
  SetScopeNotificationSettings({this.scope,
    this.notificationSettings});

  /// Parse from a json
  SetScopeNotificationSettings.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "scope": this.scope == null ? null : this.scope.toJson(),
      "notification_settings": this.notificationSettings == null ? null : this.notificationSettings.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setScopeNotificationSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}