part of '../tdapi.dart';

class ResetAllNotificationSettings extends TdFunction {
  /// Resets all notification settings to their default values. By default, all chats are unmuted and message previews are shown
  const ResetAllNotificationSettings();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  ResetAllNotificationSettings copyWith() =>
      const ResetAllNotificationSettings();

  static const CONSTRUCTOR = 'resetAllNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
