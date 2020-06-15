part of '../tdapi.dart';

class Chats extends TdObject {
  List<int> chatIds;
  dynamic extra;

  /// Represents a list of chats. 
  /// [chatIds] List of chat identifiers
  Chats({this.chatIds});

  /// Parse from a json
  Chats.fromJson(Map<String, dynamic> json)  {
    this.chatIds = List<int>.from((json['chat_ids'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_ids": this.chatIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'chats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}