part of '../tdapi.dart';

class ChatEvent extends TdObject {
  /// Represents a chat event
  ChatEvent({this.id, this.date, this.userId, this.action});

  /// [id] Chat event identifier
  int id;

  /// [date] Point in time (Unix timestamp) when the event happened
  int date;

  /// [userId] Identifier of the user who performed the action that triggered the event
  int userId;

  /// [action] Action performed by the user
  ChatEventAction action;

  /// Parse from a json
  ChatEvent.fromJson(Map<String, dynamic> json) {
    this.id = int.tryParse(json['id'] ?? "");
    this.date = json['date'];
    this.userId = json['user_id'];
    this.action =
        ChatEventAction.fromJson(json['action'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "date": this.date,
      "user_id": this.userId,
      "action": this.action == null ? null : this.action.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEvent';

  @override
  String getConstructor() => CONSTRUCTOR;
}
