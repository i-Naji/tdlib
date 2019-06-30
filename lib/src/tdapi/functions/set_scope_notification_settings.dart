part of '../tdapi.dart';

class SetScopeNotificationSettings extends TLFunction {
  var scope;
  ScopeNotificationSettings notificationSettings;
  dynamic extra;

  /// Changes notification settings for chats of a given type.
  ///[scope] Types of chats for which to change the notification settings .
  /// [notificationSettings] The new notification settings for the given scope
  SetScopeNotificationSettings({this.scope, this.notificationSettings});

  /// Parse from a json
  SetScopeNotificationSettings.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'scope': this.scope.toJson(),
      'notification_settings': this.notificationSettings.toJson(),
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'setScopeNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
