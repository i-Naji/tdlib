part of '../tdapi.dart';

class GetChatAdministrators extends TLFunction {
  int chatId;
  dynamic extra;

  /// Returns a list of users who are administrators of the chat.
  ///[chatId] Chat identifier
  GetChatAdministrators({this.chatId});

  /// Parse from a json
  GetChatAdministrators.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "chat_id": this.chatId, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getChatAdministrators";

  @override
  String getConstructor() => CONSTRUCTOR;
}
