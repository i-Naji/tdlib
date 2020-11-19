part of '../tdapi.dart';

class NotificationGroup extends TdObject {
  /// Describes a group of notifications
  NotificationGroup(
      {this.id, this.type, this.chatId, this.totalCount, this.notifications});

  /// [id] Unique persistent auto-incremented from 1 identifier of the notification group
  int id;

  /// [type] Type of the group
  NotificationGroupType type;

  /// [chatId] Identifier of a chat to which all notifications in the group belong
  int chatId;

  /// [totalCount] Total number of active notifications in the group
  int totalCount;

  /// [notifications] The list of active notifications
  List<Notification> notifications;

  /// Parse from a json
  NotificationGroup.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.type =
        NotificationGroupType.fromJson(json['type'] ?? <String, dynamic>{});
    this.chatId = json['chat_id'];
    this.totalCount = json['total_count'];
    this.notifications = List<Notification>.from((json['notifications'] ?? [])
        .map((item) => Notification.fromJson(item ?? <String, dynamic>{}))
        .toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "type": this.type == null ? null : this.type.toJson(),
      "chat_id": this.chatId,
      "total_count": this.totalCount,
      "notifications": this.notifications.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'notificationGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
