part of '../tdapi.dart';

class SetChatPermissions extends TdFunction {
  /// Changes the chat members permissions. Supported only for basic groups and supergroups. Requires can_restrict_members administrator right
  SetChatPermissions({this.chatId, this.permissions});

  /// [chatId] Chat identifier
  int chatId;

  /// [permissions] New non-administrator members permissions in the chat
  ChatPermissions permissions;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetChatPermissions.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "permissions":
          this.permissions == null ? null : this.permissions.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatPermissions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
