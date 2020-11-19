part of '../tdapi.dart';

class ChatLists extends TdObject {
  /// Contains a list of chat lists
  ChatLists({this.chatLists});

  /// [chatLists] List of chat lists
  List<ChatList> chatLists;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ChatLists.fromJson(Map<String, dynamic> json) {
    this.chatLists = List<ChatList>.from((json['chat_lists'] ?? [])
        .map((item) => ChatList.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_lists": this.chatLists.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatLists';

  @override
  String getConstructor() => CONSTRUCTOR;
}
