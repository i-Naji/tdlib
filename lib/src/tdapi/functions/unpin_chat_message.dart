part of '../tdapi.dart';

class UnpinChatMessage extends TdFunction {

  /// Removes the pinned message from a chat; requires can_pin_messages rights in the group or channel
  UnpinChatMessage({this.chatId});

  /// [chatId] Identifier of the chat
  int chatId;

  /// callback sign
  dynamic extra;

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