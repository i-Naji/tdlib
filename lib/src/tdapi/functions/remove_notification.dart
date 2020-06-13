part of '../tdapi.dart';

class RemoveNotification extends TdFunction {
  int notificationGroupId;
  int notificationId;
  dynamic extra;

  /// Removes an active notification from notification list. Needs to be called only if the notification is removed by the current user. 
  /// [notificationGroupId] Identifier of notification group to which the notification belongs . 
  /// [notificationId] Identifier of removed notification
  RemoveNotification({this.notificationGroupId,
    this.notificationId});

  /// Parse from a json
  RemoveNotification.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "notification_group_id": this.notificationGroupId,
      "notification_id": this.notificationId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeNotification';
}