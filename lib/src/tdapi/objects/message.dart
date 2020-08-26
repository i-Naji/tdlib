part of '../tdapi.dart';

class Message extends TdObject {
  int id;
  int senderUserId;
  int chatId;
  MessageSendingState sendingState;
  MessageSchedulingState schedulingState;
  bool isOutgoing;
  bool canBeEdited;
  bool canBeForwarded;
  bool canBeDeletedOnlyForSelf;
  bool canBeDeletedForAllUsers;
  bool isChannelPost;
  bool containsUnreadMention;
  int date;
  int editDate;
  MessageForwardInfo forwardInfo;
  int replyToMessageId;
  int ttl;
  double ttlExpiresIn;
  int viaBotUserId;
  String authorSignature;
  int views;
  String mediaAlbumId;
  String restrictionReason;
  MessageContent content;
  ReplyMarkup replyMarkup;
  dynamic extra;

  /// Describes a message. 
  /// [id] Message identifier, unique for the chat to which the message belongs. 
  /// [senderUserId] Identifier of the user who sent the message; 0 if unknown. Currently, it is unknown for channel posts and for channel posts automatically forwarded to discussion group. 
  /// [chatId] Chat identifier. 
  /// [sendingState] Information about the sending state of the message; may be null. 
  /// [schedulingState] Information about the scheduling state of the message; may be null. 
  /// [isOutgoing] True, if the message is outgoing. 
  /// [canBeEdited] True, if the message can be edited. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message by the application. 
  /// [canBeForwarded] True, if the message can be forwarded. 
  /// [canBeDeletedOnlyForSelf] True, if the message can be deleted only for the current user while other users will continue to see it. 
  /// [canBeDeletedForAllUsers] True, if the message can be deleted for all users. 
  /// [isChannelPost] True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts. 
  /// [containsUnreadMention] True, if the message contains an unread mention for the current user. 
  /// [date] Point in time (Unix timestamp) when the message was sent. 
  /// [editDate] Point in time (Unix timestamp) when the message was last edited. 
  /// [forwardInfo] Information about the initial message sender; may be null. 
  /// [replyToMessageId] If non-zero, the identifier of the message this message is replying to; can be the identifier of a deleted message. 
  /// [ttl] For self-destructing messages, the message's TTL (Time To Live), in seconds; 0 if none. TDLib will send updateDeleteMessages or updateMessageContent once the TTL expires. 
  /// [ttlExpiresIn] Time left before the message expires, in seconds. 
  /// [viaBotUserId] If non-zero, the user identifier of the bot through which this message was sent. 
  /// [authorSignature] For channel posts, optional author signature. 
  /// [views] Number of times this message was viewed. 
  /// [mediaAlbumId] Unique identifier of an album this message belongs to. Only photos and videos can be grouped together in albums. 
  /// [restrictionReason] If non-empty, contains a human-readable description of the reason why access to this message must be restricted. 
  /// [content] Content of the message. 
  /// [replyMarkup] Reply markup for the message; may be null
  Message({this.id,
    this.senderUserId,
    this.chatId,
    this.sendingState,
    this.schedulingState,
    this.isOutgoing,
    this.canBeEdited,
    this.canBeForwarded,
    this.canBeDeletedOnlyForSelf,
    this.canBeDeletedForAllUsers,
    this.isChannelPost,
    this.containsUnreadMention,
    this.date,
    this.editDate,
    this.forwardInfo,
    this.replyToMessageId,
    this.ttl,
    this.ttlExpiresIn,
    this.viaBotUserId,
    this.authorSignature,
    this.views,
    this.mediaAlbumId,
    this.restrictionReason,
    this.content,
    this.replyMarkup});

  /// Parse from a json
  Message.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.senderUserId = json['sender_user_id'];
    this.chatId = json['chat_id'];
    this.sendingState = MessageSendingState.fromJson(json['sending_state'] ?? <String, dynamic>{});
    this.schedulingState = MessageSchedulingState.fromJson(json['scheduling_state'] ?? <String, dynamic>{});
    this.isOutgoing = json['is_outgoing'];
    this.canBeEdited = json['can_be_edited'];
    this.canBeForwarded = json['can_be_forwarded'];
    this.canBeDeletedOnlyForSelf = json['can_be_deleted_only_for_self'];
    this.canBeDeletedForAllUsers = json['can_be_deleted_for_all_users'];
    this.isChannelPost = json['is_channel_post'];
    this.containsUnreadMention = json['contains_unread_mention'];
    this.date = json['date'];
    this.editDate = json['edit_date'];
    this.forwardInfo = MessageForwardInfo.fromJson(json['forward_info'] ?? <String, dynamic>{});
    this.replyToMessageId = json['reply_to_message_id'];
    this.ttl = json['ttl'];
    this.ttlExpiresIn = json['ttl_expires_in'];
    this.viaBotUserId = json['via_bot_user_id'];
    this.authorSignature = json['author_signature'];
    this.views = json['views'];
    this.mediaAlbumId = json['media_album_id'];
    this.restrictionReason = json['restriction_reason'];
    this.content = MessageContent.fromJson(json['content'] ?? <String, dynamic>{});
    this.replyMarkup = ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "sender_user_id": this.senderUserId,
      "chat_id": this.chatId,
      "sending_state": this.sendingState.toJson(),
      "scheduling_state": this.schedulingState.toJson(),
      "is_outgoing": this.isOutgoing,
      "can_be_edited": this.canBeEdited,
      "can_be_forwarded": this.canBeForwarded,
      "can_be_deleted_only_for_self": this.canBeDeletedOnlyForSelf,
      "can_be_deleted_for_all_users": this.canBeDeletedForAllUsers,
      "is_channel_post": this.isChannelPost,
      "contains_unread_mention": this.containsUnreadMention,
      "date": this.date,
      "edit_date": this.editDate,
      "forward_info": this.forwardInfo.toJson(),
      "reply_to_message_id": this.replyToMessageId,
      "ttl": this.ttl,
      "ttl_expires_in": this.ttlExpiresIn,
      "via_bot_user_id": this.viaBotUserId,
      "author_signature": this.authorSignature,
      "views": this.views,
      "media_album_id": this.mediaAlbumId,
      "restriction_reason": this.restrictionReason,
      "content": this.content.toJson(),
      "reply_markup": this.replyMarkup.toJson(),
    };
  }

  static const CONSTRUCTOR = 'message';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}