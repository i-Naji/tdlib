part of '../tdapi.dart';

class ChatNearby extends TdObject {
  /// Describes a chat located nearby
  ChatNearby({this.chatId, this.distance});

  /// [chatId] Chat identifier
  int chatId;

  /// [distance] Distance to the chat location, in meters
  int distance;

  /// Parse from a json
  ChatNearby.fromJson(Map<String, dynamic> json) {
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
