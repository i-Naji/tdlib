part of '../tdapi.dart';

class AddChatMember extends TLFunction {
  int chatId;
  int userId;
  int forwardLimit;
  dynamic extra;

  /// Adds a new member to a chat. Members can't be added to private or secret chats. Members will not be added until the chat state has been synchronized with the server.
  ///[chatId] Chat identifier .
  /// [userId] Identifier of the user .
  /// [forwardLimit] The number of earlier messages from the chat to be forwarded to the new member; up to 100. Ignored for supergroups and channels
  AddChatMember({this.chatId, this.userId, this.forwardLimit});

  /// Parse from a json
  AddChatMember.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'user_id': this.userId,
      'forward_limit': this.forwardLimit,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'addChatMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}
