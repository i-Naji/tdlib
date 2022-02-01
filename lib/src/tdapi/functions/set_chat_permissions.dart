part of '../tdapi.dart';

class SetChatPermissions extends TdFunction {

  /// Changes the chat members permissions. Supported only for basic groups and supergroups. Requires can_restrict_members administrator right
  const SetChatPermissions({
    required this.chatId,
    required this.permissions,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [permissions] New non-administrator members permissions in the chat
  final ChatPermissions permissions;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "permissions": permissions.toJson(),
      "@extra": extra,
    };
  }
  
  SetChatPermissions copyWith({
    int? chatId,
    ChatPermissions? permissions,
  }) => SetChatPermissions(
    chatId: chatId ?? this.chatId,
    permissions: permissions ?? this.permissions,
  );

  static const CONSTRUCTOR = 'setChatPermissions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
