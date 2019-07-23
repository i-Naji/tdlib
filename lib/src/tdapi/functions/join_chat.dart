part of '../tdapi.dart';

class JoinChat extends TdFunction {
  int chatId;
  dynamic extra;

  /// Adds current user as a new member to a chat. Private and secret chats can't be joined using this method.
  ///[chatId] Chat identifier
  JoinChat({this.chatId});

  /// Parse from a json
  JoinChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "chat_id": this.chatId, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "joinChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
