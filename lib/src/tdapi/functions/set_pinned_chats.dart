part of '../tdapi.dart';

class SetPinnedChats extends TdFunction {
  ChatList chatList;
  List<int> chatIds;
  dynamic extra;

  /// Changes the order of pinned chats. 
  /// [chatList] Chat list in which to change the order of pinned chats . 
  /// [chatIds] The new list of pinned chats
  SetPinnedChats({this.chatList,
    this.chatIds});

  /// Parse from a json
  SetPinnedChats.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": this.chatList.toJson(),
      "chat_ids": this.chatIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setPinnedChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}