part of '../tdapi.dart';

class ChatStatisticsInviterInfo extends TdObject {
  int userId;
  int addedMemberCount;

  /// Contains statistics about number of new members invited by a user. 
  /// [userId] User identifier. 
  /// [addedMemberCount] Number of new members invited by the user
  ChatStatisticsInviterInfo({this.userId,
    this.addedMemberCount});

  /// Parse from a json
  ChatStatisticsInviterInfo.fromJson(Map<String, dynamic> json)  {
    this.userId = json['user_id'];
    this.addedMemberCount = json['added_member_count'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "added_member_count": this.addedMemberCount,
    };
  }

  static const CONSTRUCTOR = 'chatStatisticsInviterInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}