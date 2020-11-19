part of '../tdapi.dart';

class SetPinnedChats extends TdFunction {
  /// Changes the order of pinned chats
  SetPinnedChats({this.chatList, this.chatIds});

  /// [chatList] Chat list in which to change the order of pinned chats
  ChatList chatList;

  /// [chatIds] The new list of pinned chats
  List<int> chatIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetPinnedChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": this.chatList == null ? null : this.chatList.toJson(),
      "chat_ids": this.chatIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setPinnedChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
