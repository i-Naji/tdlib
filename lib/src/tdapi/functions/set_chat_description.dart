part of '../tdapi.dart';

class SetChatDescription extends TdFunction {
  /// Changes information about a chat. Available for basic groups, supergroups, and channels. Requires can_change_info rights
  SetChatDescription({this.chatId, this.description});

  /// [chatId] Identifier of the chat
  int chatId;

  /// [description] New chat description; 0-255 characters
  String description;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetChatDescription.fromJson(Map<String, dynamic> json);

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

  @override
  String getConstructor() => CONSTRUCTOR;
}
