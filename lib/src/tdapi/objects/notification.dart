part of '../tdapi.dart';

class Notification implements TdObject {
  int id;
  int date;
  bool isSilent;
  var type;

  /// Contains information about a notification.
  ///[id] Unique persistent identifier of this notification .
  /// [date] Notification date.
  /// [isSilent] True, if the notification was initially silent .
  /// [type] Notification type
  Notification({this.id, this.date, this.isSilent, this.type});

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
      "type": this.type.toJson()
    };
  }

  static const String CONSTRUCTOR = "notification";

  @override
  String getConstructor() => CONSTRUCTOR;
}
