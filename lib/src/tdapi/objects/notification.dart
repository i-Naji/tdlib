part of '../tdapi.dart';

class Notification implements TLObject {
  int id;
  int date;
  var type;

  /// Contains information about a notification.
  ///[id] Unique persistent identifier of this notification .
  /// [date] Notification date .
  /// [type] Notification type
  Notification({this.id, this.date, this.type});

  /// Parse from a json
  Notification.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.date = json['date'];
    this.type = NotificationType.fromJson(json['type'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "date": this.date,
      "type": this.type.toJson()
    };
  }

  static const String CONSTRUCTOR = "notification";

  @override
  String getConstructor() => CONSTRUCTOR;
}
