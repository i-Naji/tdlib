part of '../tdapi.dart';

class UpgradeBasicGroupChatToSupergroupChat extends TLFunction {
  int chatId;
  dynamic extra;

  /// Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom. Deactivates the original basic group.
  ///[chatId] Identifier of the chat to upgrade
  UpgradeBasicGroupChatToSupergroupChat({this.chatId});

  /// Parse from a json
  UpgradeBasicGroupChatToSupergroupChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'chat_id': this.chatId, '@extra': this.extra};
  }

  static const String CONSTRUCTOR = 'upgradeBasicGroupChatToSupergroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
