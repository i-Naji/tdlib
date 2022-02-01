part of '../tdapi.dart';

class GetScopeNotificationSettings extends TdFunction {

  /// Returns the notification settings for chats of a given type
  const GetScopeNotificationSettings({
    required this.scope,
  });
  
  /// [scope] Types of chats for which to return the notification settings information
  final NotificationSettingsScope scope;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "scope": scope.toJson(),
      "@extra": extra,
    };
  }
  
  GetScopeNotificationSettings copyWith({
    NotificationSettingsScope? scope,
  }) => GetScopeNotificationSettings(
    scope: scope ?? this.scope,
  );

  static const CONSTRUCTOR = 'getScopeNotificationSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
