part of '../tdapi.dart';

class UnpinAllChatMessages extends TdFunction {
  /// Removes all pinned messages from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in the channel
  UnpinAllChatMessages({this.chatId});

  /// [chatId] Identifier of the chat
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  UnpinAllChatMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'unpinAllChatMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
