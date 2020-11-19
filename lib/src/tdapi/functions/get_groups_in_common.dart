part of '../tdapi.dart';

class GetGroupsInCommon extends TdFunction {
  /// Returns a list of common group chats with a given user. Chats are sorted by their type and creation date
  GetGroupsInCommon({this.userId, this.offsetChatId, this.limit});

  /// [userId] User identifier
  int userId;

  /// [offsetChatId] Chat identifier starting from which to return chats; use 0 for the first request
  int offsetChatId;

  /// [limit] The maximum number of chats to be returned; up to 100
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetGroupsInCommon.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "offset_chat_id": this.offsetChatId,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getGroupsInCommon';

  @override
  String getConstructor() => CONSTRUCTOR;
}
