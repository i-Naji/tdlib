part of '../tdapi.dart';

class ChatStatisticsAdministratorActionsInfo extends TdObject {
  int userId;
  int deletedMessageCount;
  int bannedUserCount;
  int restrictedUserCount;

  /// Contains statistics about administrator actions done by a user. 
  /// [userId] Administrator user identifier. 
  /// [deletedMessageCount] Number of messages deleted by the administrator. 
  /// [bannedUserCount] Number of users banned by the administrator. 
  /// [restrictedUserCount] Number of users restricted by the administrator
  ChatStatisticsAdministratorActionsInfo({this.userId,
    this.deletedMessageCount,
    this.bannedUserCount,
    this.restrictedUserCount});

  /// Parse from a json
  ChatStatisticsAdministratorActionsInfo.fromJson(Map<String, dynamic> json)  {
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