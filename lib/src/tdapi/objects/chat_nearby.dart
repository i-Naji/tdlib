part of '../tdapi.dart';

class ChatNearby extends TdObject {

  /// Describes a chat located nearby
  const ChatNearby({
    required this.chatId,
    required this.distance,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [distance] Distance to the chat location, in meters
  final int distance;
  
  /// Parse from a json
  factory ChatNearby.fromJson(Map<String, dynamic> json) => ChatNearby(
    chatId: json['chat_id'],
    distance: json['distance'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "distance": distance,
    };
  }
  
  ChatNearby copyWith({
    int? chatId,
    int? distance,
  }) => ChatNearby(
    chatId: chatId ?? this.chatId,
    distance: distance ?? this.distance,
  );

  static const CONSTRUCTOR = 'chatNearby';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
