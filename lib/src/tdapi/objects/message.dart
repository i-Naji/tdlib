part of '../tdapi.dart';

class Message extends TdObject {

  /// Describes a message
  const Message({
    required this.id,
    required this.senderId,
    required this.chatId,
    this.sendingState,
    this.schedulingState,
    required this.isOutgoing,
    required this.isPinned,
    required this.canBeEdited,
    required this.canBeForwarded,
    required this.canBeSaved,
    required this.canBeDeletedOnlyForSelf,
    required this.canBeDeletedForAllUsers,
    required this.canGetStatistics,
    required this.canGetMessageThread,
    required this.canGetViewers,
    required this.canGetMediaTimestampLinks,
    required this.hasTimestampedMedia,
    required this.isChannelPost,
    required this.containsUnreadMention,
    required this.date,
    required this.editDate,
    this.forwardInfo,
    this.interactionInfo,
    required this.replyInChatId,
    required this.replyToMessageId,
    required this.messageThreadId,
    required this.ttl,
    required this.ttlExpiresIn,
    required this.viaBotUserId,
    required this.authorSignature,
    required this.mediaAlbumId,
    required this.restrictionReason,
    required this.content,
    this.replyMarkup,
    this.extra,
    this.clientId,
  });
  
  /// [id] Message identifier; unique for the chat to which the message belongs
  final int id;

  /// [senderId] Identifier of the sender of the message
  final MessageSender senderId;

  /// [chatId] Chat identifier
  final int chatId;

  /// [sendingState] The sending state of the message; may be null
  final MessageSendingState? sendingState;

  /// [schedulingState] The scheduling state of the message; may be null
  final MessageSchedulingState? schedulingState;

  /// [isOutgoing] True, if the message is outgoing
  final bool isOutgoing;

  /// [isPinned] True, if the message is pinned
  final bool isPinned;

  /// [canBeEdited] True, if the message can be edited. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message by the application
  final bool canBeEdited;

  /// [canBeForwarded] True, if the message can be forwarded
  final bool canBeForwarded;

  /// [canBeSaved] True, if content of the message can be saved locally or copied
  final bool canBeSaved;

  /// [canBeDeletedOnlyForSelf] True, if the message can be deleted only for the current user while other users will continue to see it
  final bool canBeDeletedOnlyForSelf;

  /// [canBeDeletedForAllUsers] True, if the message can be deleted for all users
  final bool canBeDeletedForAllUsers;

  /// [canGetStatistics] True, if the message statistics are available
  final bool canGetStatistics;

  /// [canGetMessageThread] True, if the message thread info is available
  final bool canGetMessageThread;

  /// [canGetViewers] True, if chat members already viewed the message can be received through getMessageViewers
  final bool canGetViewers;

  /// [canGetMediaTimestampLinks] True, if media timestamp links can be generated for media timestamp entities in the message text, caption or web page description
  final bool canGetMediaTimestampLinks;

  /// [hasTimestampedMedia] True, if media timestamp entities refers to a media in this message as opposed to a media in the replied message
  final bool hasTimestampedMedia;

  /// [isChannelPost] True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts
  final bool isChannelPost;

  /// [containsUnreadMention] True, if the message contains an unread mention for the current user
  final bool containsUnreadMention;

  /// [date] Point in time (Unix timestamp) when the message was sent
  final int date;

  /// [editDate] Point in time (Unix timestamp) when the message was last edited
  final int editDate;

  /// [forwardInfo] Information about the initial message sender; may be null
  final MessageForwardInfo? forwardInfo;

  /// [interactionInfo] Information about interactions with the message; may be null
  final MessageInteractionInfo? interactionInfo;

  /// [replyInChatId] If non-zero, the identifier of the chat to which the replied message belongs; Currently, only messages in the Replies chat can have different reply_in_chat_id and chat_id
  final int replyInChatId;

  /// [replyToMessageId] If non-zero, the identifier of the message this message is replying to; can be the identifier of a deleted message
  final int replyToMessageId;

  /// [messageThreadId] If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs
  final int messageThreadId;

  /// [ttl] For self-destructing messages, the message's TTL (Time To Live), in seconds; 0 if none. TDLib will send updateDeleteMessages or updateMessageContent once the TTL expires
  final int ttl;

  /// [ttlExpiresIn] Time left before the message expires, in seconds. If the TTL timer isn't started yet, equals to the value of the ttl field
  final double ttlExpiresIn;

  /// [viaBotUserId] If non-zero, the user identifier of the bot through which this message was sent
  final int viaBotUserId;

  /// [authorSignature] For channel posts and anonymous group messages, optional author signature
  final String authorSignature;

  /// [mediaAlbumId] Unique identifier of an album this message belongs to. Only audios, documents, photos and videos can be grouped together in albums
  final int mediaAlbumId;

  /// [restrictionReason] If non-empty, contains a human-readable description of the reason why access to this message must be restricted
  final String restrictionReason;

  /// [content] Content of the message
  final MessageContent content;

  /// [replyMarkup] Reply markup for the message; may be null
  final ReplyMarkup? replyMarkup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Message.fromJson(Map<String, dynamic> json) => Message(
    id: json['id'],
    senderId: MessageSender.fromJson(json['sender_id']),
    chatId: json['chat_id'],
    sendingState: json['sending_state'] == null ? null : MessageSendingState.fromJson(json['sending_state']),
    schedulingState: json['scheduling_state'] == null ? null : MessageSchedulingState.fromJson(json['scheduling_state']),
    isOutgoing: json['is_outgoing'],
    isPinned: json['is_pinned'],
    canBeEdited: json['can_be_edited'],
    canBeForwarded: json['can_be_forwarded'],
    canBeSaved: json['can_be_saved'],
    canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'],
    canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'],
    canGetStatistics: json['can_get_statistics'],
    canGetMessageThread: json['can_get_message_thread'],
    canGetViewers: json['can_get_viewers'],
    canGetMediaTimestampLinks: json['can_get_media_timestamp_links'],
    hasTimestampedMedia: json['has_timestamped_media'],
    isChannelPost: json['is_channel_post'],
    containsUnreadMention: json['contains_unread_mention'],
    date: json['date'],
    editDate: json['edit_date'],
    forwardInfo: json['forward_info'] == null ? null : MessageForwardInfo.fromJson(json['forward_info']),
    interactionInfo: json['interaction_info'] == null ? null : MessageInteractionInfo.fromJson(json['interaction_info']),
    replyInChatId: json['reply_in_chat_id'],
    replyToMessageId: json['reply_to_message_id'],
    messageThreadId: json['message_thread_id'],
    ttl: json['ttl'] ?? 0,
    ttlExpiresIn: json['ttl_expires_in'],
    viaBotUserId: json['via_bot_user_id'],
    authorSignature: json['author_signature'],
    mediaAlbumId: int.parse(json['media_album_id']),
    restrictionReason: json['restriction_reason'],
    content: MessageContent.fromJson(json['content']),
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_id": senderId.toJson(),
      "chat_id": chatId,
      "sending_state": sendingState?.toJson(),
      "scheduling_state": schedulingState?.toJson(),
      "is_outgoing": isOutgoing,
      "is_pinned": isPinned,
      "can_be_edited": canBeEdited,
      "can_be_forwarded": canBeForwarded,
      "can_be_saved": canBeSaved,
      "can_be_deleted_only_for_self": canBeDeletedOnlyForSelf,
      "can_be_deleted_for_all_users": canBeDeletedForAllUsers,
      "can_get_statistics": canGetStatistics,
      "can_get_message_thread": canGetMessageThread,
      "can_get_viewers": canGetViewers,
      "can_get_media_timestamp_links": canGetMediaTimestampLinks,
      "has_timestamped_media": hasTimestampedMedia,
      "is_channel_post": isChannelPost,
      "contains_unread_mention": containsUnreadMention,
      "date": date,
      "edit_date": editDate,
      "forward_info": forwardInfo?.toJson(),
      "interaction_info": interactionInfo?.toJson(),
      "reply_in_chat_id": replyInChatId,
      "reply_to_message_id": replyToMessageId,
      "message_thread_id": messageThreadId,
      "ttl": ttl,
      "ttl_expires_in": ttlExpiresIn,
      "via_bot_user_id": viaBotUserId,
      "author_signature": authorSignature,
      "media_album_id": mediaAlbumId,
      "restriction_reason": restrictionReason,
      "content": content.toJson(),
      "reply_markup": replyMarkup?.toJson(),
    };
  }
  
  Message copyWith({
    int? id,
    MessageSender? senderId,
    int? chatId,
    MessageSendingState? sendingState,
    MessageSchedulingState? schedulingState,
    bool? isOutgoing,
    bool? isPinned,
    bool? canBeEdited,
    bool? canBeForwarded,
    bool? canBeSaved,
    bool? canBeDeletedOnlyForSelf,
    bool? canBeDeletedForAllUsers,
    bool? canGetStatistics,
    bool? canGetMessageThread,
    bool? canGetViewers,
    bool? canGetMediaTimestampLinks,
    bool? hasTimestampedMedia,
    bool? isChannelPost,
    bool? containsUnreadMention,
    int? date,
    int? editDate,
    MessageForwardInfo? forwardInfo,
    MessageInteractionInfo? interactionInfo,
    int? replyInChatId,
    int? replyToMessageId,
    int? messageThreadId,
    int? ttl,
    double? ttlExpiresIn,
    int? viaBotUserId,
    String? authorSignature,
    int? mediaAlbumId,
    String? restrictionReason,
    MessageContent? content,
    ReplyMarkup? replyMarkup,
    dynamic extra,
    int? clientId,
  }) => Message(
    id: id ?? this.id,
    senderId: senderId ?? this.senderId,
    chatId: chatId ?? this.chatId,
    sendingState: sendingState ?? this.sendingState,
    schedulingState: schedulingState ?? this.schedulingState,
    isOutgoing: isOutgoing ?? this.isOutgoing,
    isPinned: isPinned ?? this.isPinned,
    canBeEdited: canBeEdited ?? this.canBeEdited,
    canBeForwarded: canBeForwarded ?? this.canBeForwarded,
    canBeSaved: canBeSaved ?? this.canBeSaved,
    canBeDeletedOnlyForSelf: canBeDeletedOnlyForSelf ?? this.canBeDeletedOnlyForSelf,
    canBeDeletedForAllUsers: canBeDeletedForAllUsers ?? this.canBeDeletedForAllUsers,
    canGetStatistics: canGetStatistics ?? this.canGetStatistics,
    canGetMessageThread: canGetMessageThread ?? this.canGetMessageThread,
    canGetViewers: canGetViewers ?? this.canGetViewers,
    canGetMediaTimestampLinks: canGetMediaTimestampLinks ?? this.canGetMediaTimestampLinks,
    hasTimestampedMedia: hasTimestampedMedia ?? this.hasTimestampedMedia,
    isChannelPost: isChannelPost ?? this.isChannelPost,
    containsUnreadMention: containsUnreadMention ?? this.containsUnreadMention,
    date: date ?? this.date,
    editDate: editDate ?? this.editDate,
    forwardInfo: forwardInfo ?? this.forwardInfo,
    interactionInfo: interactionInfo ?? this.interactionInfo,
    replyInChatId: replyInChatId ?? this.replyInChatId,
    replyToMessageId: replyToMessageId ?? this.replyToMessageId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    ttl: ttl ?? this.ttl,
    ttlExpiresIn: ttlExpiresIn ?? this.ttlExpiresIn,
    viaBotUserId: viaBotUserId ?? this.viaBotUserId,
    authorSignature: authorSignature ?? this.authorSignature,
    mediaAlbumId: mediaAlbumId ?? this.mediaAlbumId,
    restrictionReason: restrictionReason ?? this.restrictionReason,
    content: content ?? this.content,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'message';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
