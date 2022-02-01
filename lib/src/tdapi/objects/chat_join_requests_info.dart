part of '../tdapi.dart';

class ChatJoinRequestsInfo extends TdObject {

  /// Contains information about pending join requests for a chat
  const ChatJoinRequestsInfo({
    required this.totalCount,
    required this.userIds,
  });
  
  /// [totalCount] Total number of pending join requests 
  final int totalCount;

  /// [userIds] Identifiers of at most 3 users sent the newest pending join requests
  final List<int> userIds;
  
  /// Parse from a json
  factory ChatJoinRequestsInfo.fromJson(Map<String, dynamic> json) => ChatJoinRequestsInfo(
    totalCount: json['total_count'],
    userIds: List<int>.from((json['user_ids'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "user_ids": userIds.map((i) => i).toList(),
    };
  }
  
  ChatJoinRequestsInfo copyWith({
    int? totalCount,
    List<int>? userIds,
  }) => ChatJoinRequestsInfo(
    totalCount: totalCount ?? this.totalCount,
    userIds: userIds ?? this.userIds,
  );

  static const CONSTRUCTOR = 'chatJoinRequestsInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
