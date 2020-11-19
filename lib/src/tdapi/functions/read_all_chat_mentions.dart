part of '../tdapi.dart';

class ReadAllChatMentions extends TdFunction {
  /// Marks all mentions in a chat as read
  ReadAllChatMentions({this.chatId});

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ReadAllChatMentions.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'readAllChatMentions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
