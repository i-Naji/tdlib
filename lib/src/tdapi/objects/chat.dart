part of '../tdapi.dart';

class Chat extends TdObject {
  /// A chat. (Can be a private chat, basic group, supergroup, or secret chat)
  Chat(
      {this.id,
      this.type,
      this.title,
      this.photo,
      this.permissions,
      this.lastMessage,
      this.positions,
      this.isMarkedAsUnread,
      this.isBlocked,
      this.hasScheduledMessages,
      this.canBeDeletedOnlyForSelf,
      this.canBeDeletedForAllUsers,
      this.canBeReported,
      this.defaultDisableNotification,
      this.unreadCount,
      this.lastReadInboxMessageId,
      this.lastReadOutboxMessageId,
      this.unreadMentionCount,
      this.notificationSettings,
      this.actionBar,
      this.voiceChatGroupCallId,
      this.isVoiceChatEmpty,
      this.replyMarkupMessageId,
      this.draftMessage,
      this.clientData});

  /// [id] Chat unique identifier
  int id;

  /// [type] Type of the chat
  ChatType type;

  /// [title] Chat title
  String title;

  /// [photo] Chat photo; may be null
  ChatPhotoInfo photo;

  /// [permissions] Actions that non-administrator chat members are allowed to take in the chat
  ChatPermissions permissions;

  /// [lastMessage] Last message in the chat; may be null
  Message lastMessage;

  /// [positions] Positions of the chat in chat lists
  List<ChatPosition> positions;

  /// [isMarkedAsUnread] True, if the chat is marked as unread
  bool isMarkedAsUnread;

  /// [isBlocked] True, if the chat is blocked by the current user and private messages from the chat can't be received
  bool isBlocked;

  /// [hasScheduledMessages] True, if the chat has scheduled messages
  bool hasScheduledMessages;

  /// [canBeDeletedOnlyForSelf] True, if the chat messages can be deleted only for the current user while other users will continue to see the messages
  bool canBeDeletedOnlyForSelf;

  /// [canBeDeletedForAllUsers] True, if the chat messages can be deleted for all users
  bool canBeDeletedForAllUsers;

  /// [canBeReported] True, if the chat can be reported to Telegram moderators through reportChat
  bool canBeReported;

  /// [defaultDisableNotification] Default value of the disable_notification parameter, used when a message is sent to the chat
  bool defaultDisableNotification;

  /// [unreadCount] Number of unread messages in the chat
  int unreadCount;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing message
  int lastReadOutboxMessageId;

  /// [unreadMentionCount] Number of unread messages with a mention/reply in the chat
  int unreadMentionCount;

  /// [notificationSettings] Notification settings for this chat
  ChatNotificationSettings notificationSettings;

  /// [actionBar] Describes actions which should be possible to do through a chat action bar; may be null
  ChatActionBar actionBar;

  /// [voiceChatGroupCallId] Group call identifier of an active voice chat; 0 if none or unknown. The voice chat can be received through the method getGroupCall
  int voiceChatGroupCallId;

  /// [isVoiceChatEmpty] True, if an active voice chat is empty
  bool isVoiceChatEmpty;

  /// [replyMarkupMessageId] Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
  int replyMarkupMessageId;

  /// [draftMessage] A draft of a message in the chat; may be null
  DraftMessage draftMessage;

  /// [clientData] Contains application-specific data associated with the chat. (For example, the chat scroll position or local chat notification settings can be stored here.) Persistent if the message database is used
  String clientData;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Chat.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.type = ChatType.fromJson(json['type'] ?? <String, dynamic>{});
    this.title = json['title'];
    this.photo = ChatPhotoInfo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.permissions =
        ChatPermissions.fromJson(json['permissions'] ?? <String, dynamic>{});
    this.lastMessage =
        Message.fromJson(json['last_message'] ?? <String, dynamic>{});
    this.positions = List<ChatPosition>.from((json['positions'] ?? [])
        .map((item) => ChatPosition.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.isMarkedAsUnread = json['is_marked_as_unread'];
    this.isBlocked = json['is_blocked'];
    this.hasScheduledMessages = json['has_scheduled_messages'];
    this.canBeDeletedOnlyForSelf = json['can_be_deleted_only_for_self'];
    this.canBeDeletedForAllUsers = json['can_be_deleted_for_all_users'];
    this.canBeReported = json['can_be_reported'];
    this.defaultDisableNotification = json['default_disable_notification'];
    this.unreadCount = json['unread_count'];
    this.lastReadInboxMessageId = json['last_read_inbox_message_id'];
    this.lastReadOutboxMessageId = json['last_read_outbox_message_id'];
    this.unreadMentionCount = json['unread_mention_count'];
    this.notificationSettings = ChatNotificationSettings.fromJson(
        json['notification_settings'] ?? <String, dynamic>{});
    this.actionBar =
        ChatActionBar.fromJson(json['action_bar'] ?? <String, dynamic>{});
    this.voiceChatGroupCallId = json['voice_chat_group_call_id'];
    this.isVoiceChatEmpty = json['is_voice_chat_empty'];
    this.replyMarkupMessageId = json['reply_markup_message_id'];
    this.draftMessage =
        DraftMessage.fromJson(json['draft_message'] ?? <String, dynamic>{});
    this.clientData = json['client_data'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "type": this.type == null ? null : this.type.toJson(),
      "title": this.title,
      "photo": this.photo == null ? null : this.photo.toJson(),
      "permissions":
          this.permissions == null ? null : this.permissions.toJson(),
      "last_message":
          this.lastMessage == null ? null : this.lastMessage.toJson(),
      "positions": this.positions.map((i) => i.toJson()).toList(),
      "is_marked_as_unread": this.isMarkedAsUnread,
      "is_blocked": this.isBlocked,
      "has_scheduled_messages": this.hasScheduledMessages,
      "can_be_deleted_only_for_self": this.canBeDeletedOnlyForSelf,
      "can_be_deleted_for_all_users": this.canBeDeletedForAllUsers,
      "can_be_reported": this.canBeReported,
      "default_disable_notification": this.defaultDisableNotification,
      "unread_count": this.unreadCount,
      "last_read_inbox_message_id": this.lastReadInboxMessageId,
      "last_read_outbox_message_id": this.lastReadOutboxMessageId,
      "unread_mention_count": this.unreadMentionCount,
      "notification_settings": this.notificationSettings == null
          ? null
          : this.notificationSettings.toJson(),
      "action_bar": this.actionBar == null ? null : this.actionBar.toJson(),
      "voice_chat_group_call_id": this.voiceChatGroupCallId,
      "is_voice_chat_empty": this.isVoiceChatEmpty,
      "reply_markup_message_id": this.replyMarkupMessageId,
      "draft_message":
          this.draftMessage == null ? null : this.draftMessage.toJson(),
      "client_data": this.clientData,
    };
  }

  static const CONSTRUCTOR = 'chat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
