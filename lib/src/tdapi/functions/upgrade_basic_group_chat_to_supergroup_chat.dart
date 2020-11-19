part of '../tdapi.dart';

class UpgradeBasicGroupChatToSupergroupChat extends TdFunction {
  /// Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires creator privileges. Deactivates the original basic group
  UpgradeBasicGroupChatToSupergroupChat({this.chatId});

  /// [chatId] Identifier of the chat to upgrade
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  UpgradeBasicGroupChatToSupergroupChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'upgradeBasicGroupChatToSupergroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
