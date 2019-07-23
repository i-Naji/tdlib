part of '../tdapi.dart';

class GenerateChatInviteLink extends TdFunction {
  int chatId;
  dynamic extra;

  /// Generates a new invite link for a chat; the previously generated link is revoked. Available for basic groups, supergroups, and channels. In basic groups this can be called only by the group's creator; in supergroups and channels this requires appropriate administrator rights.
  ///[chatId] Chat identifier
  GenerateChatInviteLink({this.chatId});

  /// Parse from a json
  GenerateChatInviteLink.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "chat_id": this.chatId, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "generateChatInviteLink";

  @override
  String getConstructor() => CONSTRUCTOR;
}
