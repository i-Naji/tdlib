part of '../tdapi.dart';

class DeleteMessages extends TLFunction {
  int chatId;
  List<int> messageIds;
  bool revoke;
  dynamic extra;

  /// Deletes messages.
  ///[chatId] Chat identifier .
  /// [messageIds] Identifiers of the messages to be deleted .
  /// [revoke] Pass true to try to delete messages for all chat members. Always true for supergroups, channels and secret chats
  DeleteMessages({this.chatId, this.messageIds, this.revoke});

  /// Parse from a json
  DeleteMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'message_ids': this.messageIds,
      'revoke': this.revoke,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'deleteMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
