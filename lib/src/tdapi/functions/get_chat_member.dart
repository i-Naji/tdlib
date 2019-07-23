part of '../tdapi.dart';

class GetChatMember extends TdFunction {
  int chatId;
  int userId;
  dynamic extra;

  /// Returns information about a single member of a chat.
  ///[chatId] Chat identifier .
  /// [userId] User identifier
  GetChatMember({this.chatId, this.userId});

  /// Parse from a json
  GetChatMember.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "user_id": this.userId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getChatMember";

  @override
  String getConstructor() => CONSTRUCTOR;
}
