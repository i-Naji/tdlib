part of '../tdapi.dart';

class ChatStatisticsAdministratorActionsInfo extends TdObject {
  /// Contains statistics about administrator actions done by a user
  ChatStatisticsAdministratorActionsInfo(
      {this.userId,
      this.deletedMessageCount,
      this.bannedUserCount,
      this.restrictedUserCount});

  /// [userId] Administrator user identifier
  int userId;

  /// [deletedMessageCount] Number of messages deleted by the administrator
  int deletedMessageCount;

  /// [bannedUserCount] Number of users banned by the administrator
  int bannedUserCount;

  /// [restrictedUserCount] Number of users restricted by the administrator
  int restrictedUserCount;

  /// Parse from a json
  ChatStatisticsAdministratorActionsInfo.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
    this.deletedMessageCount = json['deleted_message_count'];
    this.bannedUserCount = json['banned_user_count'];
    this.restrictedUserCount = json['restricted_user_count'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "deleted_message_count": this.deletedMessageCount,
      "banned_user_count": this.bannedUserCount,
      "restricted_user_count": this.restrictedUserCount,
    };
  }

  static const CONSTRUCTOR = 'chatStatisticsAdministratorActionsInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
