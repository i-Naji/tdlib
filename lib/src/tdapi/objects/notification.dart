part of '../tdapi.dart';

class Notification extends TdObject {
  /// Contains information about a notification
  Notification({this.id, this.date, this.isSilent, this.type});

  /// [id] Unique persistent identifier of this notification
  int id;

  /// [date] Notification date
  int date;

  /// [isSilent] True, if the notification was initially silent
  bool isSilent;

  /// [type] Notification type
  NotificationType type;

  /// Parse from a json
  Notification.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.date = json['date'];
    this.isSilent = json['is_silent'];
    this.type = NotificationType.fromJson(json['type'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "date": this.date,
      "is_silent": this.isSilent,
      "type": this.type == null ? null : this.type.toJson(),
    };
  }

  static const CONSTRUCTOR = 'notification';

  @override
  String getConstructor() => CONSTRUCTOR;
}
