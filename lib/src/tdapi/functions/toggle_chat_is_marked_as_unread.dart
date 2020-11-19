part of '../tdapi.dart';

class ToggleChatIsMarkedAsUnread extends TdFunction {
  /// Changes the marked as unread state of a chat
  ToggleChatIsMarkedAsUnread({this.chatId, this.isMarkedAsUnread});

  /// [chatId] Chat identifier
  int chatId;

  /// [isMarkedAsUnread] New value of is_marked_as_unread
  bool isMarkedAsUnread;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ToggleChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "is_marked_as_unread": this.isMarkedAsUnread,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'toggleChatIsMarkedAsUnread';

  @override
  String getConstructor() => CONSTRUCTOR;
}
