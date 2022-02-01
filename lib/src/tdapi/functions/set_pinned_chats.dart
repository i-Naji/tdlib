part of '../tdapi.dart';

class SetPinnedChats extends TdFunction {

  /// Changes the order of pinned chats
  const SetPinnedChats({
    required this.chatList,
    required this.chatIds,
  });
  
  /// [chatList] Chat list in which to change the order of pinned chats 
  final ChatList chatList;

  /// [chatIds] The new list of pinned chats
  final List<int> chatIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": chatList.toJson(),
      "chat_ids": chatIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  SetPinnedChats copyWith({
    ChatList? chatList,
    List<int>? chatIds,
  }) => SetPinnedChats(
    chatList: chatList ?? this.chatList,
    chatIds: chatIds ?? this.chatIds,
  );

  static const CONSTRUCTOR = 'setPinnedChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
