part of '../tdapi.dart';

class ToggleChatIsPinned extends TdFunction {

  /// Changes the pinned state of a chat. There can be up to GetOption("pinned_chat_count_max")/GetOption("pinned_archived_chat_count_max") pinned non-secret chats and the same number of secret chats in the main/arhive chat list
  const ToggleChatIsPinned({
    required this.chatList,
    required this.chatId,
    required this.isPinned,
  });
  
  /// [chatList] Chat list in which to change the pinned state of the chat
  final ChatList chatList;

  /// [chatId] Chat identifier 
  final int chatId;

  /// [isPinned] True, if the chat is pinned
  final bool isPinned;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": chatList.toJson(),
      "chat_id": chatId,
      "is_pinned": isPinned,
      "@extra": extra,
    };
  }
  
  ToggleChatIsPinned copyWith({
    ChatList? chatList,
    int? chatId,
    bool? isPinned,
  }) => ToggleChatIsPinned(
    chatList: chatList ?? this.chatList,
    chatId: chatId ?? this.chatId,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'toggleChatIsPinned';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
