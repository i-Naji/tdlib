part of '../tdapi.dart';

class AddChatToList extends TdFunction {
  int chatId;
  ChatList chatList;
  dynamic extra;

  /// Adds a chat to a chat list. A chat can't be simultaneously in Main and Archive chat lists, so it is automatically removed from another one if needed. 
  /// [chatId] Chat identifier. 
  /// [chatList] The chat list. Use getChatListsToAddChat to get suitable chat lists
  AddChatToList({this.chatId,
    this.chatList});

  /// Parse from a json
  AddChatToList.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "chat_list": this.chatList.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addChatToList';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}