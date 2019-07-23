part of '../tdapi.dart';

class SetPinnedChats extends TdFunction {
  List<int> chatIds;
  dynamic extra;

  /// Changes the order of pinned chats.
  ///[chatIds] The new list of pinned chats
  SetPinnedChats({this.chatIds});

  /// Parse from a json
  SetPinnedChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_ids": this.chatIds,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "setPinnedChats";

  @override
  String getConstructor() => CONSTRUCTOR;
}
