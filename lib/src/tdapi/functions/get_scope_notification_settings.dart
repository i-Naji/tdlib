part of '../tdapi.dart';

class GetScopeNotificationSettings extends TLFunction {
  var scope;
  dynamic extra;

  /// Returns the notification settings for chats of a given type.
  ///[scope] Types of chats for which to return the notification settings information
  GetScopeNotificationSettings({this.scope});

  /// Parse from a json
  GetScopeNotificationSettings.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "scope": this.scope.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getScopeNotificationSettings";

  @override
  String getConstructor() => CONSTRUCTOR;
}
