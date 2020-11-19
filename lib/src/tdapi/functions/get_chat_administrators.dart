part of '../tdapi.dart';

class GetChatAdministrators extends TdFunction {
  /// Returns a list of administrators of the chat with their custom titles
  GetChatAdministrators({this.chatId});

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetChatAdministrators.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatAdministrators';

  @override
  String getConstructor() => CONSTRUCTOR;
}
