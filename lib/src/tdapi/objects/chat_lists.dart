part of '../tdapi.dart';

class ChatLists extends TdObject {
  List<List<ChatList>> chatLists;
  dynamic extra;

  /// Contains a list of chat lists. 
  /// [chatLists] List of chat lists
  ChatLists({this.chatLists});

  /// Parse from a json
  ChatLists.fromJson(Map<String, dynamic> json)  {
    this.chatLists = List<List<ChatList>>.from((json['chat_lists'] ?? []).map((item) => List<ChatList>.from((item ?? []).map((innerItem) => ChatList.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_lists": this.chatLists.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatLists';
}