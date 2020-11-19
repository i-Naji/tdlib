part of '../tdapi.dart';

class GetChatNotificationSettingsExceptions extends TdFunction {
  /// Returns list of chats with non-default notification settings
  GetChatNotificationSettingsExceptions({this.scope, this.compareSound});

  /// [scope] If specified, only chats from the specified scope will be returned
  NotificationSettingsScope scope;

  /// [compareSound] If true, also chats with non-default sound will be returned
  bool compareSound;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetChatNotificationSettingsExceptions.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "scope": this.scope == null ? null : this.scope.toJson(),
      "compare_sound": this.compareSound,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatNotificationSettingsExceptions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
