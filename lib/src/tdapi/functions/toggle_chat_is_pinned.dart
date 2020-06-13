part of '../tdapi.dart';

class ToggleChatIsPinned extends TdFunction {
  ChatList chatList;
  int chatId;
  bool isPinned;
  dynamic extra;

  /// Changes the pinned state of a chat. You can pin up to GetOption("pinned_chat_count_max")/GetOption("pinned_archived_chat_count_max") non-secret chats and the same number of secret chats in the main/arhive chat list. 
  /// [chatList] Chat list in which to change the pinned state of the chat. 
  /// [chatId] Chat identifier . 
  /// [isPinned] True, if the chat is pinned
  ToggleChatIsPinned({this.chatList,
    this.chatId,
    this.isPinned});

  /// Parse from a json
  ToggleChatIsPinned.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": this.chatList.toJson(),
      "chat_id": this.chatId,
      "is_pinned": this.isPinned,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'toggleChatIsPinned';
}