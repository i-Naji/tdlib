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
    required this.canGetAddedReactions,
    required this.canGetStatistics,
    required this.canGetMessageThread,
    required this.canGetViewers,
    required this.canGetMediaTimestampLinks,
    required this.canReportReactions,
    required this.hasTimestampedMedia,
    required this.isChannelPost,
    required this.isTopicMessage,
    required this.containsUnreadMention,
    required this.date,
    required this.editDate,
    this.forwardInfo,
    this.interactionInfo,
    required this.unreadReactions,
    this.replyTo,
    required this.messageThreadId,
    required this.selfDestructTime,
    required this.selfDestructIn,
    required this.autoDeleteIn,
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

  /// [sendingState] The sending state of the message; may be null if the message isn't being sent and didn't fail to be sent
  final MessageSendingState? sendingState;

  /// [schedulingState] The scheduling state of the message; may be null if the message isn't scheduled
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

  /// [canGetAddedReactions] True, if the list of added reactions is available through getMessageAddedReactions
  final bool canGetAddedReactions;

  /// [canGetStatistics] True, if the message statistics are available through getMessageStatistics
  final bool canGetStatistics;

  /// [canGetMessageThread] True, if information about the message thread is available through getMessageThread and getMessageThreadHistory
  final bool canGetMessageThread;

  /// [canGetViewers] True, if chat members already viewed the message can be received through getMessageViewers
  final bool canGetViewers;

  /// [canGetMediaTimestampLinks] True, if media timestamp links can be generated for media timestamp entities in the message text, caption or web page description through getMessageLink
  final bool canGetMediaTimestampLinks;

  /// [canReportReactions] True, if reactions on the message can be reported through reportMessageReactions
  final bool canReportReactions;

  /// [hasTimestampedMedia] True, if media timestamp entities refers to a media in this message as opposed to a media in the replied message
  final bool hasTimestampedMedia;

  /// [isChannelPost] True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts
  final bool isChannelPost;

  /// [isTopicMessage] True, if the message is a forum topic message
  final bool isTopicMessage;

  /// [containsUnreadMention] True, if the message contains an unread mention for the current user
  final bool containsUnreadMention;

  /// [date] Point in time (Unix timestamp) when the message was sent
  final int date;

  /// [editDate] Point in time (Unix timestamp) when the message was last edited
  final int editDate;

  /// [forwardInfo] Information about the initial message sender; may be null if none or unknown
  final MessageForwardInfo? forwardInfo;

  /// [interactionInfo] Information about interactions with the message; may be null if none
  final MessageInteractionInfo? interactionInfo;

  /// [unreadReactions] Information about unread reactions added to the message
  final List<UnreadReaction> unreadReactions;

  /// [replyTo] Information about the message or the story this message is replying to; may be null if none
  final MessageReplyTo? replyTo;

  /// [messageThreadId] If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs
  final int messageThreadId;

  /// [selfDestructTime] The message's self-destruct time, in seconds; 0 if none. TDLib will send updateDeleteMessages or updateMessageContent once the time expires
  final int selfDestructTime;

  /// [selfDestructIn] Time left before the message self-destruct timer expires, in seconds. If the self-destruct timer isn't started yet, equals to the value of the self_destruct_time field
  final double selfDestructIn;

  /// [autoDeleteIn] Time left before the message will be automatically deleted by message_auto_delete_time setting of the chat, in seconds; 0 if never. TDLib will send updateDeleteMessages or updateMessageContent once the time expires
  final double autoDeleteIn;

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

  /// [replyMarkup] Reply markup for the message; may be null if none
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
        sendingState: json['sending_state'] == null
            ? null
            : MessageSendingState.fromJson(json['sending_state']),
        schedulingState: json['scheduling_state'] == null
            ? null
            : MessageSchedulingState.fromJson(json['scheduling_state']),
        isOutgoing: json['is_outgoing'],
        isPinned: json['is_pinned'],
        canBeEdited: json['can_be_edited'],
        canBeForwarded: json['can_be_forwarded'],
        canBeSaved: json['can_be_saved'],
        canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'],
        canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'],
        canGetAddedReactions: json['can_get_added_reactions'],
        canGetStatistics: json['can_get_statistics'],
        canGetMessageThread: json['can_get_message_thread'],
        canGetViewers: json['can_get_viewers'],
        canGetMediaTimestampLinks: json['can_get_media_timestamp_links'],
        canReportReactions: json['can_report_reactions'],
        hasTimestampedMedia: json['has_timestamped_media'],
        isChannelPost: json['is_channel_post'],
        isTopicMessage: json['is_topic_message'],
        containsUnreadMention: json['contains_unread_mention'],
        date: json['date'],
        editDate: json['edit_date'],
        forwardInfo: json['forward_info'] == null
            ? null
            : MessageForwardInfo.fromJson(json['forward_info']),
        interactionInfo: json['interaction_info'] == null
            ? null
            : MessageInteractionInfo.fromJson(json['interaction_info']),
        unreadReactions: List<UnreadReaction>.from(
            (json['unread_reactions'] ?? [])
                .map((item) => UnreadReaction.fromJson(item))
                .toList()),
        replyTo: json['reply_to'] == null
            ? null
            : MessageReplyTo.fromJson(json['reply_to']),
        messageThreadId: json['message_thread_id'],
        selfDestructTime: json['self_destruct_time'] ?? 0,
        selfDestructIn: json['self_destruct_in'],
        autoDeleteIn: json['auto_delete_in'],
        viaBotUserId: json['via_bot_user_id'],
        authorSignature: json['author_signature'],
        mediaAlbumId: int.parse(json['media_album_id']),
        restrictionReason: json['restriction_reason'],
        content: MessageContent.fromJson(json['content']),
        replyMarkup: json['reply_markup'] == null
            ? null
            : ReplyMarkup.fromJson(json['reply_markup']),
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
      "can_get_added_reactions": canGetAddedReactions,
      "can_get_statistics": canGetStatistics,
      "can_get_message_thread": canGetMessageThread,
      "can_get_viewers": canGetViewers,
      "can_get_media_timestamp_links": canGetMediaTimestampLinks,
      "can_report_reactions": canReportReactions,
      "has_timestamped_media": hasTimestampedMedia,
      "is_channel_post": isChannelPost,
      "is_topic_message": isTopicMessage,
      "contains_unread_mention": containsUnreadMention,
      "date": date,
      "edit_date": editDate,
      "forward_info": forwardInfo?.toJson(),
      "interaction_info": interactionInfo?.toJson(),
      "unread_reactions": unreadReactions.map((i) => i.toJson()).toList(),
      "reply_to": replyTo?.toJson(),
      "message_thread_id": messageThreadId,
      "self_destruct_time": selfDestructTime,
      "self_destruct_in": selfDestructIn,
      "auto_delete_in": autoDeleteIn,
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
    bool? canGetAddedReactions,
    bool? canGetStatistics,
    bool? canGetMessageThread,
    bool? canGetViewers,
    bool? canGetMediaTimestampLinks,
    bool? canReportReactions,
    bool? hasTimestampedMedia,
    bool? isChannelPost,
    bool? isTopicMessage,
    bool? containsUnreadMention,
    int? date,
    int? editDate,
    MessageForwardInfo? forwardInfo,
    MessageInteractionInfo? interactionInfo,
    List<UnreadReaction>? unreadReactions,
    MessageReplyTo? replyTo,
    int? messageThreadId,
    int? selfDestructTime,
    double? selfDestructIn,
    double? autoDeleteIn,
    int? viaBotUserId,
    String? authorSignature,
    int? mediaAlbumId,
    String? restrictionReason,
    MessageContent? content,
    ReplyMarkup? replyMarkup,
    dynamic extra,
    int? clientId,
  }) =>
      Message(
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
        canBeDeletedOnlyForSelf:
            canBeDeletedOnlyForSelf ?? this.canBeDeletedOnlyForSelf,
        canBeDeletedForAllUsers:
            canBeDeletedForAllUsers ?? this.canBeDeletedForAllUsers,
        canGetAddedReactions: canGetAddedReactions ?? this.canGetAddedReactions,
        canGetStatistics: canGetStatistics ?? this.canGetStatistics,
        canGetMessageThread: canGetMessageThread ?? this.canGetMessageThread,
        canGetViewers: canGetViewers ?? this.canGetViewers,
        canGetMediaTimestampLinks:
            canGetMediaTimestampLinks ?? this.canGetMediaTimestampLinks,
        canReportReactions: canReportReactions ?? this.canReportReactions,
        hasTimestampedMedia: hasTimestampedMedia ?? this.hasTimestampedMedia,
        isChannelPost: isChannelPost ?? this.isChannelPost,
        isTopicMessage: isTopicMessage ?? this.isTopicMessage,
        containsUnreadMention:
            containsUnreadMention ?? this.containsUnreadMention,
        date: date ?? this.date,
        editDate: editDate ?? this.editDate,
        forwardInfo: forwardInfo ?? this.forwardInfo,
        interactionInfo: interactionInfo ?? this.interactionInfo,
        unreadReactions: unreadReactions ?? this.unreadReactions,
        replyTo: replyTo ?? this.replyTo,
        messageThreadId: messageThreadId ?? this.messageThreadId,
        selfDestructTime: selfDestructTime ?? this.selfDestructTime,
        selfDestructIn: selfDestructIn ?? this.selfDestructIn,
        autoDeleteIn: autoDeleteIn ?? this.autoDeleteIn,
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
