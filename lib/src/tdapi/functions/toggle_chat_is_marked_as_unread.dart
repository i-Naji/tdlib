part of '../tdapi.dart';

class ToggleChatIsMarkedAsUnread extends TLFunction {
  int chatId;
  bool isMarkedAsUnread;
  dynamic extra;

  /// Changes the marked as unread state of a chat.
  ///[chatId] Chat identifier .
  /// [isMarkedAsUnread] New value of is_marked_as_unread
  ToggleChatIsMarkedAsUnread({this.chatId, this.isMarkedAsUnread});

  /// Parse from a json
  ToggleChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "is_marked_as_unread": this.isMarkedAsUnread,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "toggleChatIsMarkedAsUnread";

  @override
  String getConstructor() => CONSTRUCTOR;
}
