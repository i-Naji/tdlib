part of '../tdapi.dart';

class SetChatDescription extends TdFunction {
  int chatId;
  String description;
  dynamic extra;

  /// Changes information about a chat. Available for basic groups, supergroups, and channels. Requires can_change_info rights. 
  /// [chatId] Identifier of the chat . 
  /// [description] New chat description; 0-255 characters
  SetChatDescription({this.chatId,
    this.description});

  /// Parse from a json
  SetChatDescription.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "description": this.description,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatDescription';
}