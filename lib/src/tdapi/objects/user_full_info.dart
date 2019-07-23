part of '../tdapi.dart';

class UserFullInfo implements TdObject {
  bool isBlocked;
  bool canBeCalled;
  bool hasPrivateCalls;
  String bio;
  String shareText;
  int groupInCommonCount;
  BotInfo botInfo;
  dynamic extra;

  /// Contains full information about a user (except the full list of profile photos).
  ///[isBlocked] True, if the user is blacklisted by the current user .
  /// [canBeCalled] True, if the user can be called .
  /// [hasPrivateCalls] True, if the user can't be called due to their privacy settings.
  /// [bio] A short user bio .
  /// [shareText] For bots, the text that is included with the link when users share the bot .
  /// [groupInCommonCount] Number of group chats where both the other user and the current user are a member; 0 for the current user .
  /// [botInfo] If the user is a bot, information about the bot; may be null
  UserFullInfo(
      {this.isBlocked,
      this.canBeCalled,
      this.hasPrivateCalls,
      this.bio,
      this.shareText,
      this.groupInCommonCount,
      this.botInfo});

  /// Parse from a json
  UserFullInfo.fromJson(Map<String, dynamic> json) {
    this.isBlocked = json['is_blocked'];
    this.canBeCalled = json['can_be_called'];
    this.hasPrivateCalls = json['has_private_calls'];
    this.bio = json['bio'];
    this.shareText = json['share_text'];
    this.groupInCommonCount = json['group_in_common_count'];
    this.botInfo = BotInfo.fromJson(json['bot_info'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_blocked": this.isBlocked,
      "can_be_called": this.canBeCalled,
      "has_private_calls": this.hasPrivateCalls,
      "bio": this.bio,
      "share_text": this.shareText,
      "group_in_common_count": this.groupInCommonCount,
      "bot_info": this.botInfo.toJson()
    };
  }

  static const String CONSTRUCTOR = "userFullInfo";

  @override
  String getConstructor() => CONSTRUCTOR;
}
