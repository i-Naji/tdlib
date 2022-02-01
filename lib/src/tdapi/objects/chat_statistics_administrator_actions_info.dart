part of '../tdapi.dart';

class ChatStatisticsAdministratorActionsInfo extends TdObject {

  /// Contains statistics about administrator actions done by a user
  const ChatStatisticsAdministratorActionsInfo({
    required this.userId,
    required this.deletedMessageCount,
    required this.bannedUserCount,
    required this.restrictedUserCount,
  });
  
  /// [userId] Administrator user identifier
  final int userId;

  /// [deletedMessageCount] Number of messages deleted by the administrator
  final int deletedMessageCount;

  /// [bannedUserCount] Number of users banned by the administrator
  final int bannedUserCount;

  /// [restrictedUserCount] Number of users restricted by the administrator
  final int restrictedUserCount;
  
  /// Parse from a json
  factory ChatStatisticsAdministratorActionsInfo.fromJson(Map<String, dynamic> json) => ChatStatisticsAdministratorActionsInfo(
    userId: json['user_id'],
    deletedMessageCount: json['deleted_message_count'],
    bannedUserCount: json['banned_user_count'],
    restrictedUserCount: json['restricted_user_count'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "deleted_message_count": deletedMessageCount,
      "banned_user_count": bannedUserCount,
      "restricted_user_count": restrictedUserCount,
    };
  }
  
  ChatStatisticsAdministratorActionsInfo copyWith({
    int? userId,
    int? deletedMessageCount,
    int? bannedUserCount,
    int? restrictedUserCount,
  }) => ChatStatisticsAdministratorActionsInfo(
    userId: userId ?? this.userId,
    deletedMessageCount: deletedMessageCount ?? this.deletedMessageCount,
    bannedUserCount: bannedUserCount ?? this.bannedUserCount,
    restrictedUserCount: restrictedUserCount ?? this.restrictedUserCount,
  );

  static const CONSTRUCTOR = 'chatStatisticsAdministratorActionsInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
