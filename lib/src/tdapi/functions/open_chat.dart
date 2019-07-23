part of '../tdapi.dart';

class OpenChat extends TdFunction {
  int chatId;
  dynamic extra;

  /// Informs TDLib that the chat is opened by the user. Many useful activities depend on the chat being opened or closed (e.g., in supergroups and channels all updates are received only for opened chats).
  ///[chatId] Chat identifier
  OpenChat({this.chatId});

  /// Parse from a json
  OpenChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "chat_id": this.chatId, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "openChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
