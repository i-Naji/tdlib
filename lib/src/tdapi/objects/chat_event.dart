part of '../tdapi.dart';

class ChatEvent extends TdObject {

  /// Represents a chat event
  const ChatEvent({
    required this.id,
    required this.date,
    required this.memberId,
    required this.action,
  });
  
  /// [id] Chat event identifier 
  final int id;

  /// [date] Point in time (Unix timestamp) when the event happened 
  final int date;

  /// [memberId] Identifier of the user or chat who performed the action 
  final MessageSender memberId;

  /// [action] The action
  final ChatEventAction action;
  
  /// Parse from a json
  factory ChatEvent.fromJson(Map<String, dynamic> json) => ChatEvent(
    id: int.parse(json['id']),
    date: json['date'],
    memberId: MessageSender.fromJson(json['member_id']),
    action: ChatEventAction.fromJson(json['action']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "date": date,
      "member_id": memberId.toJson(),
      "action": action.toJson(),
    };
  }
  
  ChatEvent copyWith({
    int? id,
    int? date,
    MessageSender? memberId,
    ChatEventAction? action,
  }) => ChatEvent(
    id: id ?? this.id,
    date: date ?? this.date,
    memberId: memberId ?? this.memberId,
    action: action ?? this.action,
  );

  static const CONSTRUCTOR = 'chatEvent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
