part of '../tdapi.dart';

class GetChatPinnedMessage extends TdFunction {
  /// Returns information about a newest pinned message in the chat
  GetChatPinnedMessage({this.chatId});

  /// [chatId] Identifier of the chat the message belongs to
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetChatPinnedMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatPinnedMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
