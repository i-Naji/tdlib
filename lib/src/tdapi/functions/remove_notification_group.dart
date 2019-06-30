part of '../tdapi.dart';

class RemoveNotificationGroup extends TLFunction {
  int notificationGroupId;
  int maxNotificationId;
  dynamic extra;

  /// Removes a group of active notifications. Needs to be called only if the notification group is removed by the current user.
  ///[notificationGroupId] Notification group identifier .
  /// [maxNotificationId] Maximum identifier of removed notifications
  RemoveNotificationGroup({this.notificationGroupId, this.maxNotificationId});

  /// Parse from a json
  RemoveNotificationGroup.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'notification_group_id': this.notificationGroupId,
      'max_notification_id': this.maxNotificationId,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'removeNotificationGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
