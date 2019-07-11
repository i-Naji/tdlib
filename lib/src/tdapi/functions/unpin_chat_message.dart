part of '../tdapi.dart';

class UnpinChatMessage extends TLFunction {
  int chatId;
  dynamic extra;

  /// Removes the pinned message from a chat; requires appropriate administrator rights in the group or channel.
  ///[chatId] Identifier of the chat
  UnpinChatMessage({this.chatId});

  /// Parse from a json
  UnpinChatMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "chat_id": this.chatId, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "unpinChatMessage";

  @override
  String getConstructor() => CONSTRUCTOR;
}
