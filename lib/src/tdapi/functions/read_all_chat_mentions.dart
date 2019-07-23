part of '../tdapi.dart';

class ReadAllChatMentions extends TdFunction {
  int chatId;
  dynamic extra;

  /// Marks all mentions in a chat as read.
  ///[chatId] Chat identifier
  ReadAllChatMentions({this.chatId});

  /// Parse from a json
  ReadAllChatMentions.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "chat_id": this.chatId, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "readAllChatMentions";

  @override
  String getConstructor() => CONSTRUCTOR;
}
