part of '../tdapi.dart';

class GetChatNotificationSettingsExceptions extends TdFunction {

  /// Returns list of chats with non-default notification settings
  const GetChatNotificationSettingsExceptions({
    this.scope,
    required this.compareSound,
  });
  
  /// [scope] If specified, only chats from the scope will be returned; pass null to return chats from all scopes
  final NotificationSettingsScope? scope;

  /// [compareSound] If true, also chats with non-default sound will be returned
  final bool compareSound;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "scope": scope?.toJson(),
      "compare_sound": compareSound,
      "@extra": extra,
    };
  }
  
  GetChatNotificationSettingsExceptions copyWith({
    NotificationSettingsScope? scope,
    bool? compareSound,
  }) => GetChatNotificationSettingsExceptions(
    scope: scope ?? this.scope,
    compareSound: compareSound ?? this.compareSound,
  );

  static const CONSTRUCTOR = 'getChatNotificationSettingsExceptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
