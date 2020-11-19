part of '../tdapi.dart';

class GetScopeNotificationSettings extends TdFunction {
  /// Returns the notification settings for chats of a given type
  GetScopeNotificationSettings({this.scope});

  /// [scope] Types of chats for which to return the notification settings information
  NotificationSettingsScope scope;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetScopeNotificationSettings.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "scope": this.scope == null ? null : this.scope.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getScopeNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
