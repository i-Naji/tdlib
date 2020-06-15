part of '../tdapi.dart';

class ChatMember extends TdObject {
  int userId;
  int inviterUserId;
  int joinedChatDate;
  ChatMemberStatus status;
  BotInfo botInfo;
  dynamic extra;

  /// A user with information about joining/leaving a chat. 
  /// [userId] User identifier of the chat member . 
  /// [inviterUserId] Identifier of a user that invited/promoted/banned this member in the chat; 0 if unknown. 
  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined a chat. 
  /// [status] Status of the member in the chat . 
  /// [botInfo] If the user is a bot, information about the bot; may be null. Can be null even for a bot if the bot is not a chat member
  ChatMember({this.userId,
    this.inviterUserId,
    this.joinedChatDate,
    this.status,
    this.botInfo});

  /// Parse from a json
  ChatMember.fromJson(Map<String, dynamic> json)  {
    this.userId = json['user_id'];
    this.inviterUserId = json['inviter_user_id'];
    this.joinedChatDate = json['joined_chat_date'];
    this.status = ChatMemberStatus.fromJson(json['status'] ?? <String, dynamic>{});
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
      "status": this.status.toJson(),
      "bot_info": this.botInfo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatMember';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}