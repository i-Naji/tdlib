part of '../tdapi.dart';

class ChatStatisticsInviterInfo extends TdObject {
  /// Contains statistics about number of new members invited by a user
  ChatStatisticsInviterInfo({this.userId, this.addedMemberCount});

  /// [userId] User identifier
  int userId;

  /// [addedMemberCount] Number of new members invited by the user
  int addedMemberCount;

  /// Parse from a json
  ChatStatisticsInviterInfo.fromJson(Map<String, dynamic> json) {
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
