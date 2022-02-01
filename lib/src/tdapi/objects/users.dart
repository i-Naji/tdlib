part of '../tdapi.dart';

class Users extends TdObject {

  /// Represents a list of users
  const Users({
    required this.totalCount,
    required this.userIds,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] Approximate total count of users found 
  final int totalCount;

  /// [userIds] A list of user identifiers
  final List<int> userIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Users.fromJson(Map<String, dynamic> json) => Users(
    totalCount: json['total_count'],
    userIds: List<int>.from((json['user_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "user_ids": userIds.map((i) => i).toList(),
    };
  }
  
  Users copyWith({
    int? totalCount,
    List<int>? userIds,
    dynamic extra,
    int? clientId,
  }) => Users(
    totalCount: totalCount ?? this.totalCount,
    userIds: userIds ?? this.userIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'users';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
