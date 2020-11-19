part of '../tdapi.dart';

class RemoveNotificationGroup extends TdFunction {
  /// Removes a group of active notifications. Needs to be called only if the notification group is removed by the current user
  RemoveNotificationGroup({this.notificationGroupId, this.maxNotificationId});

  /// [notificationGroupId] Notification group identifier
  int notificationGroupId;

  /// [maxNotificationId] The maximum identifier of removed notifications
  int maxNotificationId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  RemoveNotificationGroup.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "notification_group_id": this.notificationGroupId,
      "max_notification_id": this.maxNotificationId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeNotificationGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
