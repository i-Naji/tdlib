part of '../tdapi.dart';

class SetChatTitle extends TdFunction {
  int chatId;
  String title;
  dynamic extra;

  /// Changes the chat title. Supported only for basic groups, supergroups and channels. Requires can_change_info rights. The title will not be changed until the request to the server has been completed.
  ///[chatId] Chat identifier .
  /// [title] New title of the chat; 1-128 characters
  SetChatTitle({this.chatId, this.title});

  /// Parse from a json
  SetChatTitle.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "title": this.title,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "setChatTitle";

  @override
  String getConstructor() => CONSTRUCTOR;
}
