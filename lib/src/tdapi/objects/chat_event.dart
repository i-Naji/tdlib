part of '../tdapi.dart';

class ChatEvent extends TdObject {
  String id;
  int date;
  int userId;
  ChatEventAction action;

  /// Represents a chat event. 
  /// [id] Chat event identifier . 
  /// [date] Point in time (Unix timestamp) when the event happened . 
  /// [userId] Identifier of the user who performed the action that triggered the event . 
  /// [action] Action performed by the user
  ChatEvent({this.id,
    this.date,
    this.userId,
    this.action});

  /// Parse from a json
  ChatEvent.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.date = json['date'];
    this.userId = json['user_id'];
    this.action = ChatEventAction.fromJson(json['action'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "date": this.date,
      "user_id": this.userId,
      "action": this.action.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEvent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}