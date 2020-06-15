part of '../tdapi.dart';

class UnpinChatMessage extends TdFunction {
  int chatId;
  dynamic extra;

  /// Removes the pinned message from a chat; requires can_pin_messages rights in the group or channel. 
  /// [chatId] Identifier of the chat
  UnpinChatMessage({this.chatId});

  /// Parse from a json
  UnpinChatMessage.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'unpinChatMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}