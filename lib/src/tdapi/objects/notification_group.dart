part of '../tdapi.dart';

class NotificationGroup extends TdObject {
  int id;
  NotificationGroupType type;
  int chatId;
  int totalCount;
  List<List<Notification>> notifications;

  /// Describes a group of notifications. 
  /// [id] Unique persistent auto-incremented from 1 identifier of the notification group . 
  /// [type] Type of the group. 
  /// [chatId] Identifier of a chat to which all notifications in the group belong. 
  /// [totalCount] Total number of active notifications in the group. 
  /// [notifications] The list of active notifications
  NotificationGroup({this.id,
    this.type,
    this.chatId,
    this.totalCount,
    this.notifications});

  /// Parse from a json
  NotificationGroup.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.type = NotificationGroupType.fromJson(json['type'] ?? <String, dynamic>{});
    this.chatId = json['chat_id'];
    this.totalCount = json['total_count'];
    this.notifications = List<List<Notification>>.from((json['notifications'] ?? []).map((item) => List<Notification>.from((item ?? []).map((innerItem) => Notification.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "type": this.type.toJson(),
      "chat_id": this.chatId,
      "total_count": this.totalCount,
      "notifications": this.notifications.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'notificationGroup';
}