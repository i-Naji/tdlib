part of '../tdapi.dart';

class Chat implements TdObject {
  int id;
  var type;
  String title;
  ChatPhoto photo;
  ChatPermissions permissions;
  Message lastMessage;
  int order;
  bool isPinned;
  bool isMarkedAsUnread;
  bool isSponsored;
  bool canBeDeletedOnlyForSelf;
  bool canBeDeletedForAllUsers;
  bool canBeReported;
  bool defaultDisableNotification;
  int unreadCount;
  int lastReadInboxMessageId;
  int lastReadOutboxMessageId;
  int unreadMentionCount;
  ChatNotificationSettings notificationSettings;
  int pinnedMessageId;
  int replyMarkupMessageId;
  DraftMessage draftMessage;
  String clientData;
  dynamic extra;

  /// A chat. (Can be a private chat, basic group, supergroup, or secret chat).
  ///[id] Chat unique identifier.
  /// [type] Type of the chat.
  /// [title] Chat title.
  /// [photo] Chat photo; may be null.
  /// [permissions] Actions that non-administrator chat members are allowed to take in the chat.
  /// [lastMessage] Last message in the chat; may be null.
  /// [order] Descending parameter by which chats are sorted in the main chat list. If the order number of two chats is the same, they must be sorted in descending order by ID. If 0, the position of the chat in the list is undetermined.
  /// [isPinned] True, if the chat is pinned.
  /// [isMarkedAsUnread] True, if the chat is marked as unread.
  /// [isSponsored] True, if the chat is sponsored by the user's MTProxy server.
  /// [canBeDeletedOnlyForSelf] True, if the chat messages can be deleted only for the current user while other users will continue to see the messages.
  /// [canBeDeletedForAllUsers] True, if the chat messages can be deleted for all users.
  /// [canBeReported] True, if the chat can be reported to Telegram moderators through reportChat.
  /// [defaultDisableNotification] Default value of the disable_notification parameter, used when a message is sent to the chat.
  /// [unreadCount] Number of unread messages in the chat.
  /// [lastReadInboxMessageId] Identifier of the last read incoming message.
  /// [lastReadOutboxMessageId] Identifier of the last read outgoing message.
  /// [unreadMentionCount] Number of unread messages with a mention.
  /// [notificationSettings] Notification settings for this chat.
  /// [pinnedMessageId] Identifier of the pinned message in the chat; 0 if none.
  /// [replyMarkupMessageId] Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat.
  /// [draftMessage] A draft of a message in the chat; may be null.
  /// [clientData] Contains client-specific data associated with the chat. (For example, the chat position or local chat notification settings can be stored here.) Persistent if a message database is used
  Chat(
      {this.id,
      this.type,
      this.title,
      this.photo,
      this.permissions,
      this.lastMessage,
      this.order,
      this.isPinned,
      this.isMarkedAsUnread,
      this.isSponsored,
      this.canBeDeletedOnlyForSelf,
      this.canBeDeletedForAllUsers,
      this.canBeReported,
      this.defaultDisableNotification,
      this.unreadCount,
      this.lastReadInboxMessageId,
      this.lastReadOutboxMessageId,
      this.unreadMentionCount,
      this.notificationSettings,
      this.pinnedMessageId,
      this.replyMarkupMessageId,
      this.draftMessage,
      this.clientData});

  /// Parse from a json
  Chat.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.type = ChatType.fromJson(json['type'] ?? <String, dynamic>{});
    this.title = json['title'];
    this.photo = ChatPhoto.fromJson(json['photo'] ?? <String, dynamic>{});
    this.permissions =
        ChatPermissions.fromJson(json['permissions'] ?? <String, dynamic>{});
    this.lastMessage =
        Message.fromJson(json['last_message'] ?? <String, dynamic>{});
    this.order = json['order'];
    this.isPinned = json['is_pinned'];
    this.isMarkedAsUnread = json['is_marked_as_unread'];
    this.isSponsored = json['is_sponsored'];
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
    this.pinnedMessageId = json['pinned_message_id'];
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
      "type": this.type.toJson(),
      "title": this.title,
      "photo": this.photo.toJson(),
      "permissions": this.permissions.toJson(),
      "last_message": this.lastMessage.toJson(),
      "order": this.order,
      "is_pinned": this.isPinned,
      "is_marked_as_unread": this.isMarkedAsUnread,
      "is_sponsored": this.isSponsored,
      "can_be_deleted_only_for_self": this.canBeDeletedOnlyForSelf,
      "can_be_deleted_for_all_users": this.canBeDeletedForAllUsers,
      "can_be_reported": this.canBeReported,
      "default_disable_notification": this.defaultDisableNotification,
      "unread_count": this.unreadCount,
      "last_read_inbox_message_id": this.lastReadInboxMessageId,
      "last_read_outbox_message_id": this.lastReadOutboxMessageId,
      "unread_mention_count": this.unreadMentionCount,
      "notification_settings": this.notificationSettings.toJson(),
      "pinned_message_id": this.pinnedMessageId,
      "reply_markup_message_id": this.replyMarkupMessageId,
      "draft_message": this.draftMessage.toJson(),
      "client_data": this.clientData
    };
  }

  static const String CONSTRUCTOR = "chat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
