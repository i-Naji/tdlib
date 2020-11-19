part of '../tdapi.dart';

class ChatMember extends TdObject {
  /// A user with information about joining/leaving a chat
  ChatMember(
      {this.userId,
      this.inviterUserId,
      this.joinedChatDate,
      this.status,
      this.botInfo});

  /// [userId] User identifier of the chat member
  int userId;

  /// [inviterUserId] Identifier of a user that invited/promoted/banned this member in the chat; 0 if unknown
  int inviterUserId;

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined the chat
  int joinedChatDate;

  /// [status] Status of the member in the chat
  ChatMemberStatus status;

  /// [botInfo] If the user is a bot, information about the bot; may be null. Can be null even for a bot if the bot is not the chat member
  BotInfo botInfo;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ChatMember.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
    this.inviterUserId = json['inviter_user_id'];
    this.joinedChatDate = json['joined_chat_date'];
    this.status =
        ChatMemberStatus.fromJson(json['status'] ?? <String, dynamic>{});
    this.botInfo = BotInfo.fromJson(json['bot_info'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "inviter_user_id": this.inviterUserId,
      "joined_chat_date": this.joinedChatDate,
      "status": this.status == null ? null : this.status.toJson(),
      "bot_info": this.botInfo == null ? null : this.botInfo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}
