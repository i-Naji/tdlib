part of '../tdapi.dart';

class RemoveRecentlyFoundChat extends TdFunction {
  /// Removes a chat from the list of recently found chats
  RemoveRecentlyFoundChat({this.chatId});

  /// [chatId] Identifier of the chat to be removed
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  RemoveRecentlyFoundChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeRecentlyFoundChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
