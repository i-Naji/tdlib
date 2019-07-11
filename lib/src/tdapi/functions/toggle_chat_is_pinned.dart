part of '../tdapi.dart';

class ToggleChatIsPinned extends TLFunction {
  int chatId;
  bool isPinned;
  dynamic extra;

  /// Changes the pinned state of a chat. You can pin up to GetOption("pinned_chat_count_max") non-secret chats and the same number of secret chats.
  ///[chatId] Chat identifier .
  /// [isPinned] New value of is_pinned
  ToggleChatIsPinned({this.chatId, this.isPinned});

  /// Parse from a json
  ToggleChatIsPinned.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "is_pinned": this.isPinned,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "toggleChatIsPinned";

  @override
  String getConstructor() => CONSTRUCTOR;
}
