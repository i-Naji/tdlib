part of '../tdapi.dart';

class GetChatNotificationSettingsExceptions extends TdFunction {
  NotificationSettingsScope scope;
  bool compareSound;
  dynamic extra;

  /// Returns list of chats with non-default notification settings. 
  /// [scope] If specified, only chats from the specified scope will be returned . 
  /// [compareSound] If true, also chats with non-default sound will be returned
  GetChatNotificationSettingsExceptions({this.scope,
    this.compareSound});

  /// Parse from a json
  GetChatNotificationSettingsExceptions.fromJson(Map<String, dynamic> json) ;

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