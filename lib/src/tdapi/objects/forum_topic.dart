part of '../tdapi.dart';

class ForumTopic extends TdObject {
  /// Describes a forum topic
  const ForumTopic({
    required this.info,
    this.lastMessage,
    required this.isPinned,
    required this.unreadCount,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.unreadMentionCount,
    required this.unreadReactionCount,
    required this.notificationSettings,
    this.draftMessage,
    this.extra,
    this.clientId,
  });

  /// [info] Basic information about the topic
  final ForumTopicInfo info;

  /// [lastMessage] Last message in the topic; may be null if unknown
  final Message? lastMessage;

  /// [isPinned] True, if the topic is pinned in the topic list
  final bool isPinned;

  /// [unreadCount] Number of unread messages in the topic
  final int unreadCount;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing message
  final int lastReadOutboxMessageId;

  /// [unreadMentionCount] Number of unread messages with a mention/reply in the topic
  final int unreadMentionCount;

  /// [unreadReactionCount] Number of messages with unread reactions in the topic
  final int unreadReactionCount;

  /// [notificationSettings] Notification settings for the topic
  final ChatNotificationSettings notificationSettings;

  /// [draftMessage] A draft of a message in the topic; may be null if none
  final DraftMessage? draftMessage;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory ForumTopic.fromJson(Map<String, dynamic> json) => ForumTopic(
        info: ForumTopicInfo.fromJson(json['info']),
        lastMessage: json['last_message'] == null
            ? null
            : Message.fromJson(json['last_message']),
        isPinned: json['is_pinned'],
        unreadCount: json['unread_count'],
        lastReadInboxMessageId: json['last_read_inbox_message_id'],
        lastReadOutboxMessageId: json['last_read_outbox_message_id'],
        unreadMentionCount: json['unread_mention_count'],
        unreadReactionCount: json['unread_reaction_count'],
        notificationSettings:
            ChatNotificationSettings.fromJson(json['notification_settings']),
        draftMessage: json['draft_message'] == null
            ? null
            : DraftMessage.fromJson(json['draft_message']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "info": info.toJson(),
      "last_message": lastMessage?.toJson(),
      "is_pinned": isPinned,
      "unread_count": unreadCount,
      "last_read_inbox_message_id": lastReadInboxMessageId,
      "last_read_outbox_message_id": lastReadOutboxMessageId,
      "unread_mention_count": unreadMentionCount,
      "unread_reaction_count": unreadReactionCount,
      "notification_settings": notificationSettings.toJson(),
      "draft_message": draftMessage?.toJson(),
    };
  }

  ForumTopic copyWith({
    ForumTopicInfo? info,
    Message? lastMessage,
    bool? isPinned,
    int? unreadCount,
    int? lastReadInboxMessageId,
    int? lastReadOutboxMessageId,
    int? unreadMentionCount,
    int? unreadReactionCount,
    ChatNotificationSettings? notificationSettings,
    DraftMessage? draftMessage,
    dynamic extra,
    int? clientId,
  }) =>
      ForumTopic(
        info: info ?? this.info,
        lastMessage: lastMessage ?? this.lastMessage,
        isPinned: isPinned ?? this.isPinned,
        unreadCount: unreadCount ?? this.unreadCount,
        lastReadInboxMessageId:
            lastReadInboxMessageId ?? this.lastReadInboxMessageId,
        lastReadOutboxMessageId:
            lastReadOutboxMessageId ?? this.lastReadOutboxMessageId,
        unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount,
        unreadReactionCount: unreadReactionCount ?? this.unreadReactionCount,
        notificationSettings: notificationSettings ?? this.notificationSettings,
        draftMessage: draftMessage ?? this.draftMessage,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'forumTopic';

  @override
  String getConstructor() => CONSTRUCTOR;
}
