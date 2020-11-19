part of '../tdapi.dart';

class GetChat extends TdFunction {
  /// Returns information about a chat by its identifier, this is an offline request if the current user is not a bot
  GetChat({this.chatId});

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
