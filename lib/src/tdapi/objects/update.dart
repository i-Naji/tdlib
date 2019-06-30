part of '../tdapi.dart';

class Update implements TLObject {
  /// Contains notifications about data changes
  Update();

  /// a Update return type can be :
  /// * UpdateInstalledStickerSets
  /// * UpdateFileGenerationStart
  /// * UpdateChatTitle
  /// * UpdateChatPhoto
  /// * UpdateActiveNotifications
  /// * UpdateUnreadMessageCount
  /// * UpdateNewMessage
  /// * UpdateRecentStickers
  /// * UpdateTermsOfService
  /// * UpdateFavoriteStickers
  /// * UpdateNewCallbackQuery
  /// * UpdateChatDefaultDisableNotification
  /// * UpdateNewPreCheckoutQuery
  /// * UpdateSecretChat
  /// * UpdateMessageSendFailed
  /// * UpdateAuthorizationState
  /// * UpdateNewInlineCallbackQuery
  /// * UpdateChatNotificationSettings
  /// * UpdateFileGenerationStop
  /// * UpdateUserPrivacySettingRules
  /// * UpdateOption
  /// * UpdateNewChosenInlineResult
  /// * UpdateNewShippingQuery
  /// * UpdatePoll
  /// * UpdateChatIsMarkedAsUnread
  /// * UpdateUser
  /// * UpdateServiceNotification
  /// * UpdateCall
  /// * UpdateBasicGroupFullInfo
  /// * UpdateMessageContentOpened
  /// * UpdateUserStatus
  /// * UpdateChatReadOutbox
  /// * UpdateConnectionState
  /// * UpdateSavedAnimations
  /// * UpdateScopeNotificationSettings
  /// * UpdateChatOnlineMemberCount
  /// * UpdateNewCustomEvent
  /// * UpdateChatPinnedMessage
  /// * UpdateNewCustomQuery
  /// * UpdateUserFullInfo
  /// * UpdateChatIsSponsored
  /// * UpdateChatReadInbox
  /// * UpdateMessageSendAcknowledged
  /// * UpdateChatIsPinned
  /// * UpdateDeleteMessages
  /// * UpdateUserChatAction
  /// * UpdateMessageMentionRead
  /// * UpdateNotification
  /// * UpdateLanguagePackStrings
  /// * UpdateChatReplyMarkup
  /// * UpdateChatOrder
  /// * UpdateBasicGroup
  /// * UpdateMessageViews
  /// * UpdateChatUnreadMentionCount
  /// * UpdateMessageEdited
  /// * UpdateMessageSendSucceeded
  /// * UpdateFile
  /// * UpdateMessageContent
  /// * UpdateUnreadChatCount
  /// * UpdateSupergroupFullInfo
  /// * UpdateTrendingStickerSets
  /// * UpdateNewInlineQuery
  /// * UpdateHavePendingNotifications
  /// * UpdateSupergroup
  /// * UpdateChatLastMessage
  /// * UpdateNotificationGroup
  /// * UpdateNewChat
  /// * UpdateChatDraftMessage
  factory Update.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case UpdateInstalledStickerSets.CONSTRUCTOR:
        return UpdateInstalledStickerSets.fromJson(json);
      case UpdateFileGenerationStart.CONSTRUCTOR:
        return UpdateFileGenerationStart.fromJson(json);
      case UpdateChatTitle.CONSTRUCTOR:
        return UpdateChatTitle.fromJson(json);
      case UpdateChatPhoto.CONSTRUCTOR:
        return UpdateChatPhoto.fromJson(json);
      case UpdateActiveNotifications.CONSTRUCTOR:
        return UpdateActiveNotifications.fromJson(json);
      case UpdateUnreadMessageCount.CONSTRUCTOR:
        return UpdateUnreadMessageCount.fromJson(json);
      case UpdateNewMessage.CONSTRUCTOR:
        return UpdateNewMessage.fromJson(json);
      case UpdateRecentStickers.CONSTRUCTOR:
        return UpdateRecentStickers.fromJson(json);
      case UpdateTermsOfService.CONSTRUCTOR:
        return UpdateTermsOfService.fromJson(json);
      case UpdateFavoriteStickers.CONSTRUCTOR:
        return UpdateFavoriteStickers.fromJson(json);
      case UpdateNewCallbackQuery.CONSTRUCTOR:
        return UpdateNewCallbackQuery.fromJson(json);
      case UpdateChatDefaultDisableNotification.CONSTRUCTOR:
        return UpdateChatDefaultDisableNotification.fromJson(json);
      case UpdateNewPreCheckoutQuery.CONSTRUCTOR:
        return UpdateNewPreCheckoutQuery.fromJson(json);
      case UpdateSecretChat.CONSTRUCTOR:
        return UpdateSecretChat.fromJson(json);
      case UpdateMessageSendFailed.CONSTRUCTOR:
        return UpdateMessageSendFailed.fromJson(json);
      case UpdateAuthorizationState.CONSTRUCTOR:
        return UpdateAuthorizationState.fromJson(json);
      case UpdateNewInlineCallbackQuery.CONSTRUCTOR:
        return UpdateNewInlineCallbackQuery.fromJson(json);
      case UpdateChatNotificationSettings.CONSTRUCTOR:
        return UpdateChatNotificationSettings.fromJson(json);
      case UpdateFileGenerationStop.CONSTRUCTOR:
        return UpdateFileGenerationStop.fromJson(json);
      case UpdateUserPrivacySettingRules.CONSTRUCTOR:
        return UpdateUserPrivacySettingRules.fromJson(json);
      case UpdateOption.CONSTRUCTOR:
        return UpdateOption.fromJson(json);
      case UpdateNewChosenInlineResult.CONSTRUCTOR:
        return UpdateNewChosenInlineResult.fromJson(json);
      case UpdateNewShippingQuery.CONSTRUCTOR:
        return UpdateNewShippingQuery.fromJson(json);
      case UpdatePoll.CONSTRUCTOR:
        return UpdatePoll.fromJson(json);
      case UpdateChatIsMarkedAsUnread.CONSTRUCTOR:
        return UpdateChatIsMarkedAsUnread.fromJson(json);
      case UpdateUser.CONSTRUCTOR:
        return UpdateUser.fromJson(json);
      case UpdateServiceNotification.CONSTRUCTOR:
        return UpdateServiceNotification.fromJson(json);
      case UpdateCall.CONSTRUCTOR:
        return UpdateCall.fromJson(json);
      case UpdateBasicGroupFullInfo.CONSTRUCTOR:
        return UpdateBasicGroupFullInfo.fromJson(json);
      case UpdateMessageContentOpened.CONSTRUCTOR:
        return UpdateMessageContentOpened.fromJson(json);
      case UpdateUserStatus.CONSTRUCTOR:
        return UpdateUserStatus.fromJson(json);
      case UpdateChatReadOutbox.CONSTRUCTOR:
        return UpdateChatReadOutbox.fromJson(json);
      case UpdateConnectionState.CONSTRUCTOR:
        return UpdateConnectionState.fromJson(json);
      case UpdateSavedAnimations.CONSTRUCTOR:
        return UpdateSavedAnimations.fromJson(json);
      case UpdateScopeNotificationSettings.CONSTRUCTOR:
        return UpdateScopeNotificationSettings.fromJson(json);
      case UpdateChatOnlineMemberCount.CONSTRUCTOR:
        return UpdateChatOnlineMemberCount.fromJson(json);
      case UpdateNewCustomEvent.CONSTRUCTOR:
        return UpdateNewCustomEvent.fromJson(json);
      case UpdateChatPinnedMessage.CONSTRUCTOR:
        return UpdateChatPinnedMessage.fromJson(json);
      case UpdateNewCustomQuery.CONSTRUCTOR:
        return UpdateNewCustomQuery.fromJson(json);
      case UpdateUserFullInfo.CONSTRUCTOR:
        return UpdateUserFullInfo.fromJson(json);
      case UpdateChatIsSponsored.CONSTRUCTOR:
        return UpdateChatIsSponsored.fromJson(json);
      case UpdateChatReadInbox.CONSTRUCTOR:
        return UpdateChatReadInbox.fromJson(json);
      case UpdateMessageSendAcknowledged.CONSTRUCTOR:
        return UpdateMessageSendAcknowledged.fromJson(json);
      case UpdateChatIsPinned.CONSTRUCTOR:
        return UpdateChatIsPinned.fromJson(json);
      case UpdateDeleteMessages.CONSTRUCTOR:
        return UpdateDeleteMessages.fromJson(json);
      case UpdateUserChatAction.CONSTRUCTOR:
        return UpdateUserChatAction.fromJson(json);
      case UpdateMessageMentionRead.CONSTRUCTOR:
        return UpdateMessageMentionRead.fromJson(json);
      case UpdateNotification.CONSTRUCTOR:
        return UpdateNotification.fromJson(json);
      case UpdateLanguagePackStrings.CONSTRUCTOR:
        return UpdateLanguagePackStrings.fromJson(json);
      case UpdateChatReplyMarkup.CONSTRUCTOR:
        return UpdateChatReplyMarkup.fromJson(json);
      case UpdateChatOrder.CONSTRUCTOR:
        return UpdateChatOrder.fromJson(json);
      case UpdateBasicGroup.CONSTRUCTOR:
        return UpdateBasicGroup.fromJson(json);
      case UpdateMessageViews.CONSTRUCTOR:
        return UpdateMessageViews.fromJson(json);
      case UpdateChatUnreadMentionCount.CONSTRUCTOR:
        return UpdateChatUnreadMentionCount.fromJson(json);
      case UpdateMessageEdited.CONSTRUCTOR:
        return UpdateMessageEdited.fromJson(json);
      case UpdateMessageSendSucceeded.CONSTRUCTOR:
        return UpdateMessageSendSucceeded.fromJson(json);
      case UpdateFile.CONSTRUCTOR:
        return UpdateFile.fromJson(json);
      case UpdateMessageContent.CONSTRUCTOR:
        return UpdateMessageContent.fromJson(json);
      case UpdateUnreadChatCount.CONSTRUCTOR:
        return UpdateUnreadChatCount.fromJson(json);
      case UpdateSupergroupFullInfo.CONSTRUCTOR:
        return UpdateSupergroupFullInfo.fromJson(json);
      case UpdateTrendingStickerSets.CONSTRUCTOR:
        return UpdateTrendingStickerSets.fromJson(json);
      case UpdateNewInlineQuery.CONSTRUCTOR:
        return UpdateNewInlineQuery.fromJson(json);
      case UpdateHavePendingNotifications.CONSTRUCTOR:
        return UpdateHavePendingNotifications.fromJson(json);
      case UpdateSupergroup.CONSTRUCTOR:
        return UpdateSupergroup.fromJson(json);
      case UpdateChatLastMessage.CONSTRUCTOR:
        return UpdateChatLastMessage.fromJson(json);
      case UpdateNotificationGroup.CONSTRUCTOR:
        return UpdateNotificationGroup.fromJson(json);
      case UpdateNewChat.CONSTRUCTOR:
        return UpdateNewChat.fromJson(json);
      case UpdateChatDraftMessage.CONSTRUCTOR:
        return UpdateChatDraftMessage.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'update';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateAuthorizationState implements Update {
  var authorizationState;
  dynamic extra;

  /// The user authorization state has changed.
  ///[authorizationState] New authorization state
  UpdateAuthorizationState({this.authorizationState});

  /// Parse from a json
  UpdateAuthorizationState.fromJson(Map<String, dynamic> json) {
    this.authorizationState = AuthorizationState.fromJson(
        json['authorization_state'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'authorization_state': this.authorizationState.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateAuthorizationState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewMessage implements Update {
  Message message;
  dynamic extra;

  /// A new message was received; can also be an outgoing message.
  ///[message] The new message
  UpdateNewMessage({this.message});

  /// Parse from a json
  UpdateNewMessage.fromJson(Map<String, dynamic> json) {
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'message': this.message.toJson()};
  }

  static const String CONSTRUCTOR = 'updateNewMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageSendAcknowledged implements Update {
  int chatId;
  int messageId;
  dynamic extra;

  /// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully or even that the send message request will be processed. This update will be sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message.
  ///[chatId] The chat identifier of the sent message .
  /// [messageId] A temporary message identifier
  UpdateMessageSendAcknowledged({this.chatId, this.messageId});

  /// Parse from a json
  UpdateMessageSendAcknowledged.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'message_id': this.messageId
    };
  }

  static const String CONSTRUCTOR = 'updateMessageSendAcknowledged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageSendSucceeded implements Update {
  Message message;
  int oldMessageId;
  dynamic extra;

  /// A message has been successfully sent.
  ///[message] Information about the sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change .
  /// [oldMessageId] The previous temporary message identifier
  UpdateMessageSendSucceeded({this.message, this.oldMessageId});

  /// Parse from a json
  UpdateMessageSendSucceeded.fromJson(Map<String, dynamic> json) {
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
    this.oldMessageId = json['old_message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'message': this.message.toJson(),
      'old_message_id': this.oldMessageId
    };
  }

  static const String CONSTRUCTOR = 'updateMessageSendSucceeded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageSendFailed implements Update {
  Message message;
  int oldMessageId;
  int errorCode;
  String errorMessage;
  dynamic extra;

  /// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update.
  ///[message] Contains information about the message that failed to send .
  /// [oldMessageId] The previous temporary message identifier .
  /// [errorCode] An error code .
  /// [errorMessage] Error message
  UpdateMessageSendFailed(
      {this.message, this.oldMessageId, this.errorCode, this.errorMessage});

  /// Parse from a json
  UpdateMessageSendFailed.fromJson(Map<String, dynamic> json) {
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
    this.oldMessageId = json['old_message_id'];
    this.errorCode = json['error_code'];
    this.errorMessage = json['error_message'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'message': this.message.toJson(),
      'old_message_id': this.oldMessageId,
      'error_code': this.errorCode,
      'error_message': this.errorMessage
    };
  }

  static const String CONSTRUCTOR = 'updateMessageSendFailed';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageContent implements Update {
  int chatId;
  int messageId;
  var newContent;
  dynamic extra;

  /// The message content has changed.
  ///[chatId] Chat identifier .
  /// [messageId] Message identifier .
  /// [newContent] New message content
  UpdateMessageContent({this.chatId, this.messageId, this.newContent});

  /// Parse from a json
  UpdateMessageContent.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.newContent =
        MessageContent.fromJson(json['new_content'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'message_id': this.messageId,
      'new_content': this.newContent.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateMessageContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageEdited implements Update {
  int chatId;
  int messageId;
  int editDate;
  var replyMarkup;
  dynamic extra;

  /// A message was edited. Changes in the message content will come in a separate updateMessageContent.
  ///[chatId] Chat identifier .
  /// [messageId] Message identifier .
  /// [editDate] Point in time (Unix timestamp) when the message was edited .
  /// [replyMarkup] New message reply markup; may be null
  UpdateMessageEdited(
      {this.chatId, this.messageId, this.editDate, this.replyMarkup});

  /// Parse from a json
  UpdateMessageEdited.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.editDate = json['edit_date'];
    this.replyMarkup =
        ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'message_id': this.messageId,
      'edit_date': this.editDate,
      'reply_markup': this.replyMarkup.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateMessageEdited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageViews implements Update {
  int chatId;
  int messageId;
  int views;
  dynamic extra;

  /// The view count of the message has changed.
  ///[chatId] Chat identifier .
  /// [messageId] Message identifier .
  /// [views] New value of the view count
  UpdateMessageViews({this.chatId, this.messageId, this.views});

  /// Parse from a json
  UpdateMessageViews.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.views = json['views'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'message_id': this.messageId,
      'views': this.views
    };
  }

  static const String CONSTRUCTOR = 'updateMessageViews';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageContentOpened implements Update {
  int chatId;
  int messageId;
  dynamic extra;

  /// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the TTL timer for self-destructing messages.
  ///[chatId] Chat identifier .
  /// [messageId] Message identifier
  UpdateMessageContentOpened({this.chatId, this.messageId});

  /// Parse from a json
  UpdateMessageContentOpened.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'message_id': this.messageId
    };
  }

  static const String CONSTRUCTOR = 'updateMessageContentOpened';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageMentionRead implements Update {
  int chatId;
  int messageId;
  int unreadMentionCount;
  dynamic extra;

  /// A message with an unread mention was read.
  ///[chatId] Chat identifier .
  /// [messageId] Message identifier .
  /// [unreadMentionCount] The new number of unread mention messages left in the chat
  UpdateMessageMentionRead(
      {this.chatId, this.messageId, this.unreadMentionCount});

  /// Parse from a json
  UpdateMessageMentionRead.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.unreadMentionCount = json['unread_mention_count'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'message_id': this.messageId,
      'unread_mention_count': this.unreadMentionCount
    };
  }

  static const String CONSTRUCTOR = 'updateMessageMentionRead';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewChat implements Update {
  Chat chat;
  dynamic extra;

  /// A new chat has been loaded.
  ///
  UpdateNewChat({this.chat});

  /// Parse from a json
  UpdateNewChat.fromJson(Map<String, dynamic> json) {
    this.chat = Chat.fromJson(json['chat'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'chat': this.chat.toJson()};
  }

  static const String CONSTRUCTOR = 'updateNewChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatTitle implements Update {
  int chatId;
  String title;
  dynamic extra;

  /// The title of a chat was changed.
  ///[chatId] Chat identifier .
  /// [title] The new chat title
  UpdateChatTitle({this.chatId, this.title});

  /// Parse from a json
  UpdateChatTitle.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.title = json['title'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'chat_id': this.chatId, 'title': this.title};
  }

  static const String CONSTRUCTOR = 'updateChatTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatPhoto implements Update {
  int chatId;
  ChatPhoto photo;
  dynamic extra;

  /// A chat photo was changed.
  ///[chatId] Chat identifier .
  /// [photo] The new chat photo; may be null
  UpdateChatPhoto({this.chatId, this.photo});

  /// Parse from a json
  UpdateChatPhoto.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.photo = ChatPhoto.fromJson(json['photo'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'photo': this.photo.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateChatPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatLastMessage implements Update {
  int chatId;
  Message lastMessage;
  int order;
  dynamic extra;

  /// The last message of a chat was changed. If last_message is null then the last message in the chat became unknown. Some new unknown messages might be added to the chat in this case.
  ///[chatId] Chat identifier .
  /// [lastMessage] The new last message in the chat; may be null .
  /// [order] New value of the chat order
  UpdateChatLastMessage({this.chatId, this.lastMessage, this.order});

  /// Parse from a json
  UpdateChatLastMessage.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.lastMessage =
        Message.fromJson(json['last_message'] ?? <String, dynamic>{});
    this.order = json['order'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'last_message': this.lastMessage.toJson(),
      'order': this.order
    };
  }

  static const String CONSTRUCTOR = 'updateChatLastMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatOrder implements Update {
  int chatId;
  int order;
  dynamic extra;

  /// The order of the chat in the chat list has changed. Instead of this update updateChatLastMessage, updateChatIsPinned or updateChatDraftMessage might be sent.
  ///[chatId] Chat identifier .
  /// [order] New value of the order
  UpdateChatOrder({this.chatId, this.order});

  /// Parse from a json
  UpdateChatOrder.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.order = json['order'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'chat_id': this.chatId, 'order': this.order};
  }

  static const String CONSTRUCTOR = 'updateChatOrder';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatIsPinned implements Update {
  int chatId;
  bool isPinned;
  int order;
  dynamic extra;

  /// A chat was pinned or unpinned.
  ///[chatId] Chat identifier .
  /// [isPinned] New value of is_pinned .
  /// [order] New value of the chat order
  UpdateChatIsPinned({this.chatId, this.isPinned, this.order});

  /// Parse from a json
  UpdateChatIsPinned.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.isPinned = json['is_pinned'];
    this.order = json['order'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'is_pinned': this.isPinned,
      'order': this.order
    };
  }

  static const String CONSTRUCTOR = 'updateChatIsPinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatIsMarkedAsUnread implements Update {
  int chatId;
  bool isMarkedAsUnread;
  dynamic extra;

  /// A chat was marked as unread or was read.
  ///[chatId] Chat identifier .
  /// [isMarkedAsUnread] New value of is_marked_as_unread
  UpdateChatIsMarkedAsUnread({this.chatId, this.isMarkedAsUnread});

  /// Parse from a json
  UpdateChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.isMarkedAsUnread = json['is_marked_as_unread'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'is_marked_as_unread': this.isMarkedAsUnread
    };
  }

  static const String CONSTRUCTOR = 'updateChatIsMarkedAsUnread';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatIsSponsored implements Update {
  int chatId;
  bool isSponsored;
  int order;
  dynamic extra;

  /// A chat's is_sponsored field has changed.
  ///[chatId] Chat identifier .
  /// [isSponsored] New value of is_sponsored .
  /// [order] New value of chat order
  UpdateChatIsSponsored({this.chatId, this.isSponsored, this.order});

  /// Parse from a json
  UpdateChatIsSponsored.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.isSponsored = json['is_sponsored'];
    this.order = json['order'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'is_sponsored': this.isSponsored,
      'order': this.order
    };
  }

  static const String CONSTRUCTOR = 'updateChatIsSponsored';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatDefaultDisableNotification implements Update {
  int chatId;
  bool defaultDisableNotification;
  dynamic extra;

  /// The value of the default disable_notification parameter, used when a message is sent to the chat, was changed.
  ///[chatId] Chat identifier .
  /// [defaultDisableNotification] The new default_disable_notification value
  UpdateChatDefaultDisableNotification(
      {this.chatId, this.defaultDisableNotification});

  /// Parse from a json
  UpdateChatDefaultDisableNotification.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.defaultDisableNotification = json['default_disable_notification'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'default_disable_notification': this.defaultDisableNotification
    };
  }

  static const String CONSTRUCTOR = 'updateChatDefaultDisableNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatReadInbox implements Update {
  int chatId;
  int lastReadInboxMessageId;
  int unreadCount;
  dynamic extra;

  /// Incoming messages were read or number of unread messages has been changed.
  ///[chatId] Chat identifier .
  /// [lastReadInboxMessageId] Identifier of the last read incoming message .
  /// [unreadCount] The number of unread messages left in the chat
  UpdateChatReadInbox(
      {this.chatId, this.lastReadInboxMessageId, this.unreadCount});

  /// Parse from a json
  UpdateChatReadInbox.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.lastReadInboxMessageId = json['last_read_inbox_message_id'];
    this.unreadCount = json['unread_count'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'last_read_inbox_message_id': this.lastReadInboxMessageId,
      'unread_count': this.unreadCount
    };
  }

  static const String CONSTRUCTOR = 'updateChatReadInbox';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatReadOutbox implements Update {
  int chatId;
  int lastReadOutboxMessageId;
  dynamic extra;

  /// Outgoing messages were read.
  ///[chatId] Chat identifier .
  /// [lastReadOutboxMessageId] Identifier of last read outgoing message
  UpdateChatReadOutbox({this.chatId, this.lastReadOutboxMessageId});

  /// Parse from a json
  UpdateChatReadOutbox.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.lastReadOutboxMessageId = json['last_read_outbox_message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'last_read_outbox_message_id': this.lastReadOutboxMessageId
    };
  }

  static const String CONSTRUCTOR = 'updateChatReadOutbox';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatUnreadMentionCount implements Update {
  int chatId;
  int unreadMentionCount;
  dynamic extra;

  /// The chat unread_mention_count has changed.
  ///[chatId] Chat identifier .
  /// [unreadMentionCount] The number of unread mention messages left in the chat
  UpdateChatUnreadMentionCount({this.chatId, this.unreadMentionCount});

  /// Parse from a json
  UpdateChatUnreadMentionCount.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.unreadMentionCount = json['unread_mention_count'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'unread_mention_count': this.unreadMentionCount
    };
  }

  static const String CONSTRUCTOR = 'updateChatUnreadMentionCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatNotificationSettings implements Update {
  int chatId;
  ChatNotificationSettings notificationSettings;
  dynamic extra;

  /// Notification settings for a chat were changed.
  ///[chatId] Chat identifier .
  /// [notificationSettings] The new notification settings
  UpdateChatNotificationSettings({this.chatId, this.notificationSettings});

  /// Parse from a json
  UpdateChatNotificationSettings.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.notificationSettings = ChatNotificationSettings.fromJson(
        json['notification_settings'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'notification_settings': this.notificationSettings.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateChatNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateScopeNotificationSettings implements Update {
  var scope;
  ScopeNotificationSettings notificationSettings;
  dynamic extra;

  /// Notification settings for some type of chats were updated.
  ///[scope] Types of chats for which notification settings were updated .
  /// [notificationSettings] The new notification settings
  UpdateScopeNotificationSettings({this.scope, this.notificationSettings});

  /// Parse from a json
  UpdateScopeNotificationSettings.fromJson(Map<String, dynamic> json) {
    this.scope = NotificationSettingsScope.fromJson(
        json['scope'] ?? <String, dynamic>{});
    this.notificationSettings = ScopeNotificationSettings.fromJson(
        json['notification_settings'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'scope': this.scope.toJson(),
      'notification_settings': this.notificationSettings.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateScopeNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatPinnedMessage implements Update {
  int chatId;
  int pinnedMessageId;
  dynamic extra;

  /// The chat pinned message was changed.
  ///[chatId] Chat identifier .
  /// [pinnedMessageId] The new identifier of the pinned message; 0 if there is no pinned message in the chat
  UpdateChatPinnedMessage({this.chatId, this.pinnedMessageId});

  /// Parse from a json
  UpdateChatPinnedMessage.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.pinnedMessageId = json['pinned_message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'pinned_message_id': this.pinnedMessageId
    };
  }

  static const String CONSTRUCTOR = 'updateChatPinnedMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatReplyMarkup implements Update {
  int chatId;
  int replyMarkupMessageId;
  dynamic extra;

  /// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user.
  ///[chatId] Chat identifier .
  /// [replyMarkupMessageId] Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
  UpdateChatReplyMarkup({this.chatId, this.replyMarkupMessageId});

  /// Parse from a json
  UpdateChatReplyMarkup.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.replyMarkupMessageId = json['reply_markup_message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'reply_markup_message_id': this.replyMarkupMessageId
    };
  }

  static const String CONSTRUCTOR = 'updateChatReplyMarkup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatDraftMessage implements Update {
  int chatId;
  DraftMessage draftMessage;
  int order;
  dynamic extra;

  /// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update shouldn't be applied.
  ///[chatId] Chat identifier .
  /// [draftMessage] The new draft message; may be null .
  /// [order] New value of the chat order
  UpdateChatDraftMessage({this.chatId, this.draftMessage, this.order});

  /// Parse from a json
  UpdateChatDraftMessage.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.draftMessage =
        DraftMessage.fromJson(json['draft_message'] ?? <String, dynamic>{});
    this.order = json['order'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'draft_message': this.draftMessage.toJson(),
      'order': this.order
    };
  }

  static const String CONSTRUCTOR = 'updateChatDraftMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatOnlineMemberCount implements Update {
  int chatId;
  int onlineMemberCount;
  dynamic extra;

  /// The number of online group members has changed. This update with non-zero count is sent only for currently opened chats. There is no guarantee that it will be sent just after the count has changed.
  ///[chatId] Identifier of the chat .
  /// [onlineMemberCount] New number of online members in the chat, or 0 if unknown
  UpdateChatOnlineMemberCount({this.chatId, this.onlineMemberCount});

  /// Parse from a json
  UpdateChatOnlineMemberCount.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.onlineMemberCount = json['online_member_count'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'online_member_count': this.onlineMemberCount
    };
  }

  static const String CONSTRUCTOR = 'updateChatOnlineMemberCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNotification implements Update {
  int notificationGroupId;
  Notification notification;
  dynamic extra;

  /// A notification was changed.
  ///[notificationGroupId] Unique notification group identifier .
  /// [notification] Changed notification
  UpdateNotification({this.notificationGroupId, this.notification});

  /// Parse from a json
  UpdateNotification.fromJson(Map<String, dynamic> json) {
    this.notificationGroupId = json['notification_group_id'];
    this.notification =
        Notification.fromJson(json['notification'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'notification_group_id': this.notificationGroupId,
      'notification': this.notification.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNotificationGroup implements Update {
  int notificationGroupId;
  var type;
  int chatId;
  int notificationSettingsChatId;
  bool isSilent;
  int totalCount;
  List<Notification> addedNotifications;
  List<int> removedNotificationIds;
  dynamic extra;

  /// A list of active notifications in a notification group has changed.
  ///[notificationGroupId] Unique notification group identifier.
  /// [type] New type of the notification group.
  /// [chatId] Identifier of a chat to which all notifications in the group belong.
  /// [notificationSettingsChatId] Chat identifier, which notification settings must be applied to the added notifications.
  /// [isSilent] True, if the notifications should be shown without sound.
  /// [totalCount] Total number of unread notifications in the group, can be bigger than number of active notifications.
  /// [addedNotifications] List of added group notifications, sorted by notification ID .
  /// [removedNotificationIds] Identifiers of removed group notifications, sorted by notification ID
  UpdateNotificationGroup(
      {this.notificationGroupId,
      this.type,
      this.chatId,
      this.notificationSettingsChatId,
      this.isSilent,
      this.totalCount,
      this.addedNotifications,
      this.removedNotificationIds});

  /// Parse from a json
  UpdateNotificationGroup.fromJson(Map<String, dynamic> json) {
    this.notificationGroupId = json['notification_group_id'];
    this.type =
        NotificationGroupType.fromJson(json['type'] ?? <String, dynamic>{});
    this.chatId = json['chat_id'];
    this.notificationSettingsChatId = json['notification_settings_chat_id'];
    this.isSilent = json['is_silent'];
    this.totalCount = json['total_count'];
    this.addedNotifications = (json['added_notifications'] ?? [])
        .map((listValue) => Notification.fromJson(listValue))
        .toList();
    this.removedNotificationIds = json['removed_notification_ids'] ?? [];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'notification_group_id': this.notificationGroupId,
      'type': this.type.toJson(),
      'chat_id': this.chatId,
      'notification_settings_chat_id': this.notificationSettingsChatId,
      'is_silent': this.isSilent,
      'total_count': this.totalCount,
      'added_notifications':
          this.addedNotifications.map((listItem) => listItem.toJson()).toList(),
      'removed_notification_ids': this.removedNotificationIds
    };
  }

  static const String CONSTRUCTOR = 'updateNotificationGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateActiveNotifications implements Update {
  List<NotificationGroup> groups;
  dynamic extra;

  /// Contains active notifications that was shown on previous application launches. This update is sent only if a message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update.
  ///[groups] Lists of active notification groups
  UpdateActiveNotifications({this.groups});

  /// Parse from a json
  UpdateActiveNotifications.fromJson(Map<String, dynamic> json) {
    this.groups = (json['groups'] ?? [])
        .map((listValue) => NotificationGroup.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'groups': this.groups.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'updateActiveNotifications';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateHavePendingNotifications implements Update {
  bool haveDelayedNotifications;
  bool haveUnreceivedNotifications;
  dynamic extra;

  /// Describes, whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications.
  ///[haveDelayedNotifications] True, if there are some delayed notification updates, which will be sent soon.
  /// [haveUnreceivedNotifications] True, if there can be some yet unreceived notifications, which are being fetched from the server
  UpdateHavePendingNotifications(
      {this.haveDelayedNotifications, this.haveUnreceivedNotifications});

  /// Parse from a json
  UpdateHavePendingNotifications.fromJson(Map<String, dynamic> json) {
    this.haveDelayedNotifications = json['have_delayed_notifications'];
    this.haveUnreceivedNotifications = json['have_unreceived_notifications'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'have_delayed_notifications': this.haveDelayedNotifications,
      'have_unreceived_notifications': this.haveUnreceivedNotifications
    };
  }

  static const String CONSTRUCTOR = 'updateHavePendingNotifications';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateDeleteMessages implements Update {
  int chatId;
  List<int> messageIds;
  bool isPermanent;
  bool fromCache;
  dynamic extra;

  /// Some messages were deleted.
  ///[chatId] Chat identifier .
  /// [messageIds] Identifiers of the deleted messages.
  /// [isPermanent] True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible).
  /// [fromCache] True, if the messages are deleted only from the cache and can possibly be retrieved again in the future
  UpdateDeleteMessages(
      {this.chatId, this.messageIds, this.isPermanent, this.fromCache});

  /// Parse from a json
  UpdateDeleteMessages.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.messageIds = json['message_ids'] ?? [];
    this.isPermanent = json['is_permanent'];
    this.fromCache = json['from_cache'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'message_ids': this.messageIds,
      'is_permanent': this.isPermanent,
      'from_cache': this.fromCache
    };
  }

  static const String CONSTRUCTOR = 'updateDeleteMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUserChatAction implements Update {
  int chatId;
  int userId;
  var action;
  dynamic extra;

  /// User activity in the chat has changed.
  ///[chatId] Chat identifier .
  /// [userId] Identifier of a user performing an action .
  /// [action] The action description
  UpdateUserChatAction({this.chatId, this.userId, this.action});

  /// Parse from a json
  UpdateUserChatAction.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.userId = json['user_id'];
    this.action = ChatAction.fromJson(json['action'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'user_id': this.userId,
      'action': this.action.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateUserChatAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUserStatus implements Update {
  int userId;
  var status;
  dynamic extra;

  /// The user went online or offline.
  ///[userId] User identifier .
  /// [status] New status of the user
  UpdateUserStatus({this.userId, this.status});

  /// Parse from a json
  UpdateUserStatus.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
    this.status = UserStatus.fromJson(json['status'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'user_id': this.userId,
      'status': this.status.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateUserStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUser implements Update {
  User user;
  dynamic extra;

  /// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the client.
  ///[user] New data about the user
  UpdateUser({this.user});

  /// Parse from a json
  UpdateUser.fromJson(Map<String, dynamic> json) {
    this.user = User.fromJson(json['user'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'user': this.user.toJson()};
  }

  static const String CONSTRUCTOR = 'updateUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateBasicGroup implements Update {
  BasicGroup basicGroup;
  dynamic extra;

  /// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the client.
  ///[basicGroup] New data about the group
  UpdateBasicGroup({this.basicGroup});

  /// Parse from a json
  UpdateBasicGroup.fromJson(Map<String, dynamic> json) {
    this.basicGroup =
        BasicGroup.fromJson(json['basic_group'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'basic_group': this.basicGroup.toJson()};
  }

  static const String CONSTRUCTOR = 'updateBasicGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSupergroup implements Update {
  Supergroup supergroup;
  dynamic extra;

  /// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the client.
  ///[supergroup] New data about the supergroup
  UpdateSupergroup({this.supergroup});

  /// Parse from a json
  UpdateSupergroup.fromJson(Map<String, dynamic> json) {
    this.supergroup =
        Supergroup.fromJson(json['supergroup'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'supergroup': this.supergroup.toJson()};
  }

  static const String CONSTRUCTOR = 'updateSupergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSecretChat implements Update {
  SecretChat secretChat;
  dynamic extra;

  /// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the client.
  ///[secretChat] New data about the secret chat
  UpdateSecretChat({this.secretChat});

  /// Parse from a json
  UpdateSecretChat.fromJson(Map<String, dynamic> json) {
    this.secretChat =
        SecretChat.fromJson(json['secret_chat'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'secret_chat': this.secretChat.toJson()};
  }

  static const String CONSTRUCTOR = 'updateSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUserFullInfo implements Update {
  int userId;
  UserFullInfo userFullInfo;
  dynamic extra;

  /// Some data from userFullInfo has been changed.
  ///[userId] User identifier .
  /// [userFullInfo] New full information about the user
  UpdateUserFullInfo({this.userId, this.userFullInfo});

  /// Parse from a json
  UpdateUserFullInfo.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
    this.userFullInfo =
        UserFullInfo.fromJson(json['user_full_info'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'user_id': this.userId,
      'user_full_info': this.userFullInfo.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateUserFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateBasicGroupFullInfo implements Update {
  int basicGroupId;
  BasicGroupFullInfo basicGroupFullInfo;
  dynamic extra;

  /// Some data from basicGroupFullInfo has been changed.
  ///[basicGroupId] Identifier of a basic group .
  /// [basicGroupFullInfo] New full information about the group
  UpdateBasicGroupFullInfo({this.basicGroupId, this.basicGroupFullInfo});

  /// Parse from a json
  UpdateBasicGroupFullInfo.fromJson(Map<String, dynamic> json) {
    this.basicGroupId = json['basic_group_id'];
    this.basicGroupFullInfo = BasicGroupFullInfo.fromJson(
        json['basic_group_full_info'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'basic_group_id': this.basicGroupId,
      'basic_group_full_info': this.basicGroupFullInfo.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateBasicGroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSupergroupFullInfo implements Update {
  int supergroupId;
  SupergroupFullInfo supergroupFullInfo;
  dynamic extra;

  /// Some data from supergroupFullInfo has been changed.
  ///[supergroupId] Identifier of the supergroup or channel .
  /// [supergroupFullInfo] New full information about the supergroup
  UpdateSupergroupFullInfo({this.supergroupId, this.supergroupFullInfo});

  /// Parse from a json
  UpdateSupergroupFullInfo.fromJson(Map<String, dynamic> json) {
    this.supergroupId = json['supergroup_id'];
    this.supergroupFullInfo = SupergroupFullInfo.fromJson(
        json['supergroup_full_info'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'supergroup_id': this.supergroupId,
      'supergroup_full_info': this.supergroupFullInfo.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateSupergroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateServiceNotification implements Update {
  String type;
  var content;
  dynamic extra;

  /// Service notification from the server. Upon receiving this the client must show a popup with the content of the notification.
  ///[type] Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" should be shown under notification; if user presses the second, all local data should be destroyed using Destroy method.
  /// [content] Notification content
  UpdateServiceNotification({this.type, this.content});

  /// Parse from a json
  UpdateServiceNotification.fromJson(Map<String, dynamic> json) {
    this.type = json['type'];
    this.content =
        MessageContent.fromJson(json['content'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'type': this.type,
      'content': this.content.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateServiceNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFile implements Update {
  File file;
  dynamic extra;

  /// Information about a file was updated.
  ///[file] New data about the file
  UpdateFile({this.file});

  /// Parse from a json
  UpdateFile.fromJson(Map<String, dynamic> json) {
    this.file = File.fromJson(json['file'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'file': this.file.toJson()};
  }

  static const String CONSTRUCTOR = 'updateFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFileGenerationStart implements Update {
  int generationId;
  String originalPath;
  String destinationPath;
  String conversion;
  dynamic extra;

  /// The file generation process needs to be started by the client.
  ///[generationId] Unique identifier for the generation process.
  /// [originalPath] The path to a file from which a new file is generated; may be empty.
  /// [destinationPath] The path to a file that should be created and where the new file should be generated.
  /// [conversion] String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP
  UpdateFileGenerationStart(
      {this.generationId,
      this.originalPath,
      this.destinationPath,
      this.conversion});

  /// Parse from a json
  UpdateFileGenerationStart.fromJson(Map<String, dynamic> json) {
    this.generationId = json['generation_id'];
    this.originalPath = json['original_path'];
    this.destinationPath = json['destination_path'];
    this.conversion = json['conversion'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'generation_id': this.generationId,
      'original_path': this.originalPath,
      'destination_path': this.destinationPath,
      'conversion': this.conversion
    };
  }

  static const String CONSTRUCTOR = 'updateFileGenerationStart';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFileGenerationStop implements Update {
  int generationId;
  dynamic extra;

  /// File generation is no longer needed.
  ///[generationId] Unique identifier for the generation process
  UpdateFileGenerationStop({this.generationId});

  /// Parse from a json
  UpdateFileGenerationStop.fromJson(Map<String, dynamic> json) {
    this.generationId = json['generation_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'generation_id': this.generationId};
  }

  static const String CONSTRUCTOR = 'updateFileGenerationStop';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateCall implements Update {
  Call call;
  dynamic extra;

  /// New call was created or information about a call was updated.
  ///[call] New data about a call
  UpdateCall({this.call});

  /// Parse from a json
  UpdateCall.fromJson(Map<String, dynamic> json) {
    this.call = Call.fromJson(json['call'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'call': this.call.toJson()};
  }

  static const String CONSTRUCTOR = 'updateCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUserPrivacySettingRules implements Update {
  var setting;
  UserPrivacySettingRules rules;
  dynamic extra;

  /// Some privacy setting rules have been changed.
  ///[setting] The privacy setting .
  /// [rules] New privacy rules
  UpdateUserPrivacySettingRules({this.setting, this.rules});

  /// Parse from a json
  UpdateUserPrivacySettingRules.fromJson(Map<String, dynamic> json) {
    this.setting =
        UserPrivacySetting.fromJson(json['setting'] ?? <String, dynamic>{});
    this.rules =
        UserPrivacySettingRules.fromJson(json['rules'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'setting': this.setting.toJson(),
      'rules': this.rules.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateUserPrivacySettingRules';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUnreadMessageCount implements Update {
  int unreadCount;
  int unreadUnmutedCount;
  dynamic extra;

  /// Number of unread messages has changed. This update is sent only if a message database is used.
  ///[unreadCount] Total number of unread messages .
  /// [unreadUnmutedCount] Total number of unread messages in unmuted chats
  UpdateUnreadMessageCount({this.unreadCount, this.unreadUnmutedCount});

  /// Parse from a json
  UpdateUnreadMessageCount.fromJson(Map<String, dynamic> json) {
    this.unreadCount = json['unread_count'];
    this.unreadUnmutedCount = json['unread_unmuted_count'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'unread_count': this.unreadCount,
      'unread_unmuted_count': this.unreadUnmutedCount
    };
  }

  static const String CONSTRUCTOR = 'updateUnreadMessageCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUnreadChatCount implements Update {
  int unreadCount;
  int unreadUnmutedCount;
  int markedAsUnreadCount;
  int markedAsUnreadUnmutedCount;
  dynamic extra;

  /// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if a message database is used.
  ///[unreadCount] Total number of unread chats .
  /// [unreadUnmutedCount] Total number of unread unmuted chats.
  /// [markedAsUnreadCount] Total number of chats marked as unread .
  /// [markedAsUnreadUnmutedCount] Total number of unmuted chats marked as unread
  UpdateUnreadChatCount(
      {this.unreadCount,
      this.unreadUnmutedCount,
      this.markedAsUnreadCount,
      this.markedAsUnreadUnmutedCount});

  /// Parse from a json
  UpdateUnreadChatCount.fromJson(Map<String, dynamic> json) {
    this.unreadCount = json['unread_count'];
    this.unreadUnmutedCount = json['unread_unmuted_count'];
    this.markedAsUnreadCount = json['marked_as_unread_count'];
    this.markedAsUnreadUnmutedCount = json['marked_as_unread_unmuted_count'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'unread_count': this.unreadCount,
      'unread_unmuted_count': this.unreadUnmutedCount,
      'marked_as_unread_count': this.markedAsUnreadCount,
      'marked_as_unread_unmuted_count': this.markedAsUnreadUnmutedCount
    };
  }

  static const String CONSTRUCTOR = 'updateUnreadChatCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateOption implements Update {
  String name;
  var value;
  dynamic extra;

  /// An option changed its value.
  ///[name] The option name .
  /// [value] The new option value
  UpdateOption({this.name, this.value});

  /// Parse from a json
  UpdateOption.fromJson(Map<String, dynamic> json) {
    this.name = json['name'];
    this.value = OptionValue.fromJson(json['value'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'name': this.name,
      'value': this.value.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateOption';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateInstalledStickerSets implements Update {
  bool isMasks;
  List<int> stickerSetIds;
  dynamic extra;

  /// The list of installed sticker sets was updated.
  ///[isMasks] True, if the list of installed mask sticker sets was updated .
  /// [stickerSetIds] The new list of installed ordinary sticker sets
  UpdateInstalledStickerSets({this.isMasks, this.stickerSetIds});

  /// Parse from a json
  UpdateInstalledStickerSets.fromJson(Map<String, dynamic> json) {
    this.isMasks = json['is_masks'];
    this.stickerSetIds = json['sticker_set_ids'] ?? [];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'is_masks': this.isMasks,
      'sticker_set_ids': this.stickerSetIds
    };
  }

  static const String CONSTRUCTOR = 'updateInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateTrendingStickerSets implements Update {
  StickerSets stickerSets;
  dynamic extra;

  /// The list of trending sticker sets was updated or some of them were viewed.
  ///[stickerSets] The new list of trending sticker sets
  UpdateTrendingStickerSets({this.stickerSets});

  /// Parse from a json
  UpdateTrendingStickerSets.fromJson(Map<String, dynamic> json) {
    this.stickerSets =
        StickerSets.fromJson(json['sticker_sets'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'sticker_sets': this.stickerSets.toJson()};
  }

  static const String CONSTRUCTOR = 'updateTrendingStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateRecentStickers implements Update {
  bool isAttached;
  List<int> stickerIds;
  dynamic extra;

  /// The list of recently used stickers was updated.
  ///[isAttached] True, if the list of stickers attached to photo or video files was updated, otherwise the list of sent stickers is updated .
  /// [stickerIds] The new list of file identifiers of recently used stickers
  UpdateRecentStickers({this.isAttached, this.stickerIds});

  /// Parse from a json
  UpdateRecentStickers.fromJson(Map<String, dynamic> json) {
    this.isAttached = json['is_attached'];
    this.stickerIds = json['sticker_ids'] ?? [];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'is_attached': this.isAttached,
      'sticker_ids': this.stickerIds
    };
  }

  static const String CONSTRUCTOR = 'updateRecentStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFavoriteStickers implements Update {
  List<int> stickerIds;
  dynamic extra;

  /// The list of favorite stickers was updated.
  ///[stickerIds] The new list of file identifiers of favorite stickers
  UpdateFavoriteStickers({this.stickerIds});

  /// Parse from a json
  UpdateFavoriteStickers.fromJson(Map<String, dynamic> json) {
    this.stickerIds = json['sticker_ids'] ?? [];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'sticker_ids': this.stickerIds};
  }

  static const String CONSTRUCTOR = 'updateFavoriteStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSavedAnimations implements Update {
  List<int> animationIds;
  dynamic extra;

  /// The list of saved animations was updated.
  ///[animationIds] The new list of file identifiers of saved animations
  UpdateSavedAnimations({this.animationIds});

  /// Parse from a json
  UpdateSavedAnimations.fromJson(Map<String, dynamic> json) {
    this.animationIds = json['animation_ids'] ?? [];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'animation_ids': this.animationIds};
  }

  static const String CONSTRUCTOR = 'updateSavedAnimations';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateLanguagePackStrings implements Update {
  String localizationTarget;
  String languagePackId;
  List<LanguagePackString> strings;
  dynamic extra;

  /// Some language pack strings have been updated.
  ///[localizationTarget] Localization target to which the language pack belongs .
  /// [languagePackId] Identifier of the updated language pack .
  /// [strings] List of changed language pack strings
  UpdateLanguagePackStrings(
      {this.localizationTarget, this.languagePackId, this.strings});

  /// Parse from a json
  UpdateLanguagePackStrings.fromJson(Map<String, dynamic> json) {
    this.localizationTarget = json['localization_target'];
    this.languagePackId = json['language_pack_id'];
    this.strings = (json['strings'] ?? [])
        .map((listValue) => LanguagePackString.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'localization_target': this.localizationTarget,
      'language_pack_id': this.languagePackId,
      'strings': this.strings.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'updateLanguagePackStrings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateConnectionState implements Update {
  var state;
  dynamic extra;

  /// The connection state has changed.
  ///[state] The new connection state
  UpdateConnectionState({this.state});

  /// Parse from a json
  UpdateConnectionState.fromJson(Map<String, dynamic> json) {
    this.state = ConnectionState.fromJson(json['state'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'state': this.state.toJson()};
  }

  static const String CONSTRUCTOR = 'updateConnectionState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateTermsOfService implements Update {
  String termsOfServiceId;
  TermsOfService termsOfService;
  dynamic extra;

  /// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method should be called with the reason "Decline ToS update".
  ///[termsOfServiceId] Identifier of the terms of service .
  /// [termsOfService] The new terms of service
  UpdateTermsOfService({this.termsOfServiceId, this.termsOfService});

  /// Parse from a json
  UpdateTermsOfService.fromJson(Map<String, dynamic> json) {
    this.termsOfServiceId = json['terms_of_service_id'];
    this.termsOfService = TermsOfService.fromJson(
        json['terms_of_service'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'terms_of_service_id': this.termsOfServiceId,
      'terms_of_service': this.termsOfService.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateTermsOfService';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewInlineQuery implements Update {
  int id;
  int senderUserId;
  Location userLocation;
  String query;
  String offset;
  dynamic extra;

  /// A new incoming inline query; for bots only.
  ///[id] Unique query identifier .
  /// [senderUserId] Identifier of the user who sent the query .
  /// [userLocation] User location, provided by the client; may be null .
  /// [query] Text of the query .
  /// [offset] Offset of the first entry to return
  UpdateNewInlineQuery(
      {this.id, this.senderUserId, this.userLocation, this.query, this.offset});

  /// Parse from a json
  UpdateNewInlineQuery.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.senderUserId = json['sender_user_id'];
    this.userLocation =
        Location.fromJson(json['user_location'] ?? <String, dynamic>{});
    this.query = json['query'];
    this.offset = json['offset'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'id': this.id,
      'sender_user_id': this.senderUserId,
      'user_location': this.userLocation.toJson(),
      'query': this.query,
      'offset': this.offset
    };
  }

  static const String CONSTRUCTOR = 'updateNewInlineQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewChosenInlineResult implements Update {
  int senderUserId;
  Location userLocation;
  String query;
  String resultId;
  String inlineMessageId;
  dynamic extra;

  /// The user has chosen a result of an inline query; for bots only.
  ///[senderUserId] Identifier of the user who sent the query .
  /// [userLocation] User location, provided by the client; may be null .
  /// [query] Text of the query .
  /// [resultId] Identifier of the chosen result .
  /// [inlineMessageId] Identifier of the sent inline message, if known
  UpdateNewChosenInlineResult(
      {this.senderUserId,
      this.userLocation,
      this.query,
      this.resultId,
      this.inlineMessageId});

  /// Parse from a json
  UpdateNewChosenInlineResult.fromJson(Map<String, dynamic> json) {
    this.senderUserId = json['sender_user_id'];
    this.userLocation =
        Location.fromJson(json['user_location'] ?? <String, dynamic>{});
    this.query = json['query'];
    this.resultId = json['result_id'];
    this.inlineMessageId = json['inline_message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'sender_user_id': this.senderUserId,
      'user_location': this.userLocation.toJson(),
      'query': this.query,
      'result_id': this.resultId,
      'inline_message_id': this.inlineMessageId
    };
  }

  static const String CONSTRUCTOR = 'updateNewChosenInlineResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewCallbackQuery implements Update {
  int id;
  int senderUserId;
  int chatId;
  int messageId;
  int chatInstance;
  var payload;
  dynamic extra;

  /// A new incoming callback query; for bots only.
  ///[id] Unique query identifier .
  /// [senderUserId] Identifier of the user who sent the query .
  /// [chatId] Identifier of the chat, in which the query was sent.
  /// [messageId] Identifier of the message, from which the query originated .
  /// [chatInstance] Identifier that uniquely corresponds to the chat to which the message was sent .
  /// [payload] Query payload
  UpdateNewCallbackQuery(
      {this.id,
      this.senderUserId,
      this.chatId,
      this.messageId,
      this.chatInstance,
      this.payload});

  /// Parse from a json
  UpdateNewCallbackQuery.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.senderUserId = json['sender_user_id'];
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.chatInstance = json['chat_instance'];
    this.payload =
        CallbackQueryPayload.fromJson(json['payload'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'id': this.id,
      'sender_user_id': this.senderUserId,
      'chat_id': this.chatId,
      'message_id': this.messageId,
      'chat_instance': this.chatInstance,
      'payload': this.payload.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateNewCallbackQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewInlineCallbackQuery implements Update {
  int id;
  int senderUserId;
  String inlineMessageId;
  int chatInstance;
  var payload;
  dynamic extra;

  /// A new incoming callback query from a message sent via a bot; for bots only.
  ///[id] Unique query identifier .
  /// [senderUserId] Identifier of the user who sent the query .
  /// [inlineMessageId] Identifier of the inline message, from which the query originated.
  /// [chatInstance] An identifier uniquely corresponding to the chat a message was sent to .
  /// [payload] Query payload
  UpdateNewInlineCallbackQuery(
      {this.id,
      this.senderUserId,
      this.inlineMessageId,
      this.chatInstance,
      this.payload});

  /// Parse from a json
  UpdateNewInlineCallbackQuery.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.senderUserId = json['sender_user_id'];
    this.inlineMessageId = json['inline_message_id'];
    this.chatInstance = json['chat_instance'];
    this.payload =
        CallbackQueryPayload.fromJson(json['payload'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'id': this.id,
      'sender_user_id': this.senderUserId,
      'inline_message_id': this.inlineMessageId,
      'chat_instance': this.chatInstance,
      'payload': this.payload.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateNewInlineCallbackQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewShippingQuery implements Update {
  int id;
  int senderUserId;
  String invoicePayload;
  Address shippingAddress;
  dynamic extra;

  /// A new incoming shipping query; for bots only. Only for invoices with flexible price.
  ///[id] Unique query identifier .
  /// [senderUserId] Identifier of the user who sent the query .
  /// [invoicePayload] Invoice payload .
  /// [shippingAddress] User shipping address
  UpdateNewShippingQuery(
      {this.id, this.senderUserId, this.invoicePayload, this.shippingAddress});

  /// Parse from a json
  UpdateNewShippingQuery.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.senderUserId = json['sender_user_id'];
    this.invoicePayload = json['invoice_payload'];
    this.shippingAddress =
        Address.fromJson(json['shipping_address'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'id': this.id,
      'sender_user_id': this.senderUserId,
      'invoice_payload': this.invoicePayload,
      'shipping_address': this.shippingAddress.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateNewShippingQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewPreCheckoutQuery implements Update {
  int id;
  int senderUserId;
  String currency;
  int totalAmount;
  String invoicePayload;
  String shippingOptionId;
  OrderInfo orderInfo;
  dynamic extra;

  /// A new incoming pre-checkout query; for bots only. Contains full information about a checkout.
  ///[id] Unique query identifier .
  /// [senderUserId] Identifier of the user who sent the query .
  /// [currency] Currency for the product price .
  /// [totalAmount] Total price for the product, in the minimal quantity of the currency.
  /// [invoicePayload] Invoice payload .
  /// [shippingOptionId] Identifier of a shipping option chosen by the user; may be empty if not applicable .
  /// [orderInfo] Information about the order; may be null
  UpdateNewPreCheckoutQuery(
      {this.id,
      this.senderUserId,
      this.currency,
      this.totalAmount,
      this.invoicePayload,
      this.shippingOptionId,
      this.orderInfo});

  /// Parse from a json
  UpdateNewPreCheckoutQuery.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.senderUserId = json['sender_user_id'];
    this.currency = json['currency'];
    this.totalAmount = json['total_amount'];
    this.invoicePayload = json['invoice_payload'];
    this.shippingOptionId = json['shipping_option_id'];
    this.orderInfo =
        OrderInfo.fromJson(json['order_info'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'id': this.id,
      'sender_user_id': this.senderUserId,
      'currency': this.currency,
      'total_amount': this.totalAmount,
      'invoice_payload': this.invoicePayload,
      'shipping_option_id': this.shippingOptionId,
      'order_info': this.orderInfo.toJson()
    };
  }

  static const String CONSTRUCTOR = 'updateNewPreCheckoutQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewCustomEvent implements Update {
  String event;
  dynamic extra;

  /// A new incoming event; for bots only.
  ///[event] A JSON-serialized event
  UpdateNewCustomEvent({this.event});

  /// Parse from a json
  UpdateNewCustomEvent.fromJson(Map<String, dynamic> json) {
    this.event = json['event'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'event': this.event};
  }

  static const String CONSTRUCTOR = 'updateNewCustomEvent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewCustomQuery implements Update {
  int id;
  String data;
  int timeout;
  dynamic extra;

  /// A new incoming query; for bots only.
  ///[id] The query identifier .
  /// [data] JSON-serialized query data .
  /// [timeout] Query timeout
  UpdateNewCustomQuery({this.id, this.data, this.timeout});

  /// Parse from a json
  UpdateNewCustomQuery.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.data = json['data'];
    this.timeout = json['timeout'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'id': this.id,
      'data': this.data,
      'timeout': this.timeout
    };
  }

  static const String CONSTRUCTOR = 'updateNewCustomQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdatePoll implements Update {
  Poll poll;
  dynamic extra;

  /// Information about a poll was updated; for bots only.
  ///[poll] New data about the poll
  UpdatePoll({this.poll});

  /// Parse from a json
  UpdatePoll.fromJson(Map<String, dynamic> json) {
    this.poll = Poll.fromJson(json['poll'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'poll': this.poll.toJson()};
  }

  static const String CONSTRUCTOR = 'updatePoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}
