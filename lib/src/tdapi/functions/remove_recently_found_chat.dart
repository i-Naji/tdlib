part of '../tdapi.dart';

class RemoveRecentlyFoundChat extends TdFunction {
  int chatId;
  dynamic extra;

  /// Removes a chat from the list of recently found chats.
  ///[chatId] Identifier of the chat to be removed
  RemoveRecentlyFoundChat({this.chatId});

  /// Parse from a json
  RemoveRecentlyFoundChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "chat_id": this.chatId, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "removeRecentlyFoundChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
