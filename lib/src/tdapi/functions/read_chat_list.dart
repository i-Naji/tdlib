part of '../tdapi.dart';

class ReadChatList extends TdFunction {
  /// Traverse all chats in a chat list and marks all messages in the chats as read
  const ReadChatList({
    required this.chatList,
  });

  /// [chatList] Chat list in which to mark all chats as read
  final ChatList chatList;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": chatList.toJson(),
      "@extra": extra,
    };
  }

  ReadChatList copyWith({
    ChatList? chatList,
  }) =>
      ReadChatList(
        chatList: chatList ?? this.chatList,
      );

  static const CONSTRUCTOR = 'readChatList';

  @override
  String getConstructor() => CONSTRUCTOR;
}
