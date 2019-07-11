part of '../tdapi.dart';

class CheckChatUsername extends TLFunction {
  int chatId;
  String username;
  dynamic extra;

  /// Checks whether a username can be set for a chat.
  ///[chatId] Chat identifier; should be identifier of a supergroup chat, or a channel chat, or a private chat with self, or zero if chat is being created .
  /// [username] Username to be checked
  CheckChatUsername({this.chatId, this.username});

  /// Parse from a json
  CheckChatUsername.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "username": this.username,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "checkChatUsername";

  @override
  String getConstructor() => CONSTRUCTOR;
}
