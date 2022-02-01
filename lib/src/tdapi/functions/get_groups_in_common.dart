part of '../tdapi.dart';

class GetGroupsInCommon extends TdFunction {

  /// Returns a list of common group chats with a given user. Chats are sorted by their type and creation date
  const GetGroupsInCommon({
    required this.userId,
    required this.offsetChatId,
    required this.limit,
  });
  
  /// [userId] User identifier 
  final int userId;

  /// [offsetChatId] Chat identifier starting from which to return chats; use 0 for the first request 
  final int offsetChatId;

  /// [limit] The maximum number of chats to be returned; up to 100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "offset_chat_id": offsetChatId,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetGroupsInCommon copyWith({
    int? userId,
    int? offsetChatId,
    int? limit,
  }) => GetGroupsInCommon(
    userId: userId ?? this.userId,
    offsetChatId: offsetChatId ?? this.offsetChatId,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getGroupsInCommon';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
