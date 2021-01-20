part of '../tdapi.dart';

class LeaveChat extends TdFunction {
  /// Removes the current user from chat members. Private and secret chats can't be left using this method
  LeaveChat({this.chatId});

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  LeaveChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'leaveChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
