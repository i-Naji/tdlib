part of '../tdapi.dart';

class GetChatMember extends TdFunction {
  /// Returns information about a single member of a chat
  GetChatMember({this.chatId, this.userId});

  /// [chatId] Chat identifier
  int chatId;

  /// [userId] User identifier
  int userId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetChatMember.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "user_id": this.userId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}
