part of '../tdapi.dart';

class DeleteMessages extends TdFunction {
  /// Deletes messages
  DeleteMessages({this.chatId, this.messageIds, this.revoke});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageIds] Identifiers of the messages to be deleted
  List<int> messageIds;

  /// [revoke] Pass true to try to delete messages for all chat members. Always true for supergroups, channels and secret chats
  bool revoke;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  DeleteMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_ids": this.messageIds.map((i) => i).toList(),
      "revoke": this.revoke,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'deleteMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
