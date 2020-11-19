part of '../tdapi.dart';

class UnpinChatMessage extends TdFunction {
  /// Removes a pinned message from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in the channel
  UnpinChatMessage({this.chatId, this.messageId});

  /// [chatId] Identifier of the chat
  int chatId;

  /// [messageId] Identifier of the removed pinned message
  int messageId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  UnpinChatMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'unpinChatMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
