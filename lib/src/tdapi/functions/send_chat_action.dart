part of '../tdapi.dart';

class SendChatAction extends TdFunction {

  /// Sends a notification about user activity in a chat
  SendChatAction({this.chatId,
    this.action});

  /// [chatId] Chat identifier 
  int chatId;

  /// [action] The action description
  ChatAction action;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SendChatAction.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "action": this.action == null ? null : this.action.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendChatAction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}