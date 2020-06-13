part of '../tdapi.dart';

class SetChatPermissions extends TdFunction {
  int chatId;
  ChatPermissions permissions;
  dynamic extra;

  /// Changes the chat members permissions. Supported only for basic groups and supergroups. Requires can_restrict_members administrator right. 
  /// [chatId] Chat identifier. 
  /// [permissions] New non-administrator members permissions in the chat
  SetChatPermissions({this.chatId,
    this.permissions});

  /// Parse from a json
  SetChatPermissions.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "permissions": this.permissions.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatPermissions';
}