part of '../tdapi.dart';

class RemoveChatActionBar extends TdFunction {
  int chatId;
  dynamic extra;

  /// Removes a chat action bar without any other action. 
  /// [chatId] Chat identifier
  RemoveChatActionBar({this.chatId});

  /// Parse from a json
  RemoveChatActionBar.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeChatActionBar';
}