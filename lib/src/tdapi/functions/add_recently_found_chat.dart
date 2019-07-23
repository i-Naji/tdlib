part of '../tdapi.dart';

class AddRecentlyFoundChat extends TdFunction {
  int chatId;
  dynamic extra;

  /// Adds a chat to the list of recently found chats. The chat is added to the beginning of the list. If the chat is already in the list, it will be removed from the list first.
  ///[chatId] Identifier of the chat to add
  AddRecentlyFoundChat({this.chatId});

  /// Parse from a json
  AddRecentlyFoundChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "chat_id": this.chatId, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "addRecentlyFoundChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
