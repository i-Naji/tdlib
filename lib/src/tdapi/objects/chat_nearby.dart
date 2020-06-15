part of '../tdapi.dart';

class ChatNearby extends TdObject {
  int chatId;
  int distance;

  /// Describes a chat located nearby. 
  /// [chatId] Chat identifier . 
  /// [distance] Distance to the chat location in meters
  ChatNearby({this.chatId,
    this.distance});

  /// Parse from a json
  ChatNearby.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.distance = json['distance'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "distance": this.distance,
    };
  }

  static const CONSTRUCTOR = 'chatNearby';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}