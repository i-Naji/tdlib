part of '../tdapi.dart';

class MessagePosition extends TdObject {

  /// Contains information about a message in a specific position
  const MessagePosition({
    required this.position,
    required this.messageId,
    required this.date,
  });
  
  /// [position] 0-based message position in the full list of suitable messages 
  final int position;

  /// [messageId] Message identifier 
  final int messageId;

  /// [date] Point in time (Unix timestamp) when the message was sent
  final int date;
  
  /// Parse from a json
  factory MessagePosition.fromJson(Map<String, dynamic> json) => MessagePosition(
    position: json['position'],
    messageId: json['message_id'],
    date: json['date'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "position": position,
      "message_id": messageId,
      "date": date,
    };
  }
  
  MessagePosition copyWith({
    int? position,
    int? messageId,
    int? date,
  }) => MessagePosition(
    position: position ?? this.position,
    messageId: messageId ?? this.messageId,
    date: date ?? this.date,
  );

  static const CONSTRUCTOR = 'messagePosition';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
