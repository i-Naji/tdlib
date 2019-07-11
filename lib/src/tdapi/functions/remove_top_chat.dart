part of '../tdapi.dart';

class RemoveTopChat extends TLFunction {
  var category;
  int chatId;
  dynamic extra;

  /// Removes a chat from the list of frequently used chats. Supported only if the chat info database is enabled.
  ///[category] Category of frequently used chats .
  /// [chatId] Chat identifier
  RemoveTopChat({this.category, this.chatId});

  /// Parse from a json
  RemoveTopChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "category": this.category.toJson(),
      "chat_id": this.chatId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "removeTopChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
