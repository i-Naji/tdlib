part of '../tdapi.dart';

class CheckChatUsername extends TdFunction {
  /// Checks whether a username can be set for a chat
  CheckChatUsername({this.chatId, this.username});

  /// [chatId] Chat identifier; should be identifier of a supergroup chat, or a channel chat, or a private chat with self, or zero if chat is being created
  int chatId;

  /// [username] Username to be checked
  String username;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CheckChatUsername.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "username": this.username,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'checkChatUsername';

  @override
  String getConstructor() => CONSTRUCTOR;
}
