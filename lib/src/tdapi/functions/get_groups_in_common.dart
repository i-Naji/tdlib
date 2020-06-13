part of '../tdapi.dart';

class GetGroupsInCommon extends TdFunction {
  int userId;
  int offsetChatId;
  int limit;
  dynamic extra;

  /// Returns a list of common group chats with a given user. Chats are sorted by their type and creation date. 
  /// [userId] User identifier . 
  /// [offsetChatId] Chat identifier starting from which to return chats; use 0 for the first request . 
  /// [limit] The maximum number of chats to be returned; up to 100
  GetGroupsInCommon({this.userId,
    this.offsetChatId,
    this.limit});

  /// Parse from a json
  GetGroupsInCommon.fromJson(Map<String, dynamic> json) ;

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
}