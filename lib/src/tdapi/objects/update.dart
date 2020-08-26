part of '../tdapi.dart';

class Update extends TdObject {
  

  /// Contains notifications about data changes
  Update();

  /// a Update return type can be :
  /// * UpdateAuthorizationState
  /// * UpdateNewMessage
  /// * UpdateMessageSendAcknowledged
  /// * UpdateMessageSendSucceeded
  /// * UpdateMessageSendFailed
  /// * UpdateMessageContent
  /// * UpdateMessageEdited
  /// * UpdateMessageViews
  /// * UpdateMessageContentOpened
  /// * UpdateMessageMentionRead
  /// * UpdateMessageLiveLocationViewed
  /// * UpdateNewChat
  /// * UpdateChatTitle
  /// * UpdateChatPhoto
  /// * UpdateChatPermissions
  /// * UpdateChatLastMessage
  /// * UpdateChatPosition
  /// * UpdateChatIsMarkedAsUnread
  /// * UpdateChatHasScheduledMessages
  /// * UpdateChatDefaultDisableNotification
  /// * UpdateChatReadInbox
  /// * UpdateChatReadOutbox
  /// * UpdateChatUnreadMentionCount
  /// * UpdateChatNotificationSettings
  /// * UpdateScopeNotificationSettings
  /// * UpdateChatActionBar
  /// * UpdateChatPinnedMessage
  /// * UpdateChatReplyMarkup
  /// * UpdateChatDraftMessage
  /// * UpdateChatFilters
  /// * UpdateChatOnlineMemberCount
  /// * UpdateNotification
  /// * UpdateNotificationGroup
  /// * UpdateActiveNotifications
  /// * UpdateHavePendingNotifications
  /// * UpdateDeleteMessages
  /// * UpdateUserChatAction
  /// * UpdateUserStatus
  /// * UpdateUser
  /// * UpdateBasicGroup
  /// * UpdateSupergroup
  /// * UpdateSecretChat
  /// * UpdateUserFullInfo
  /// * UpdateBasicGroupFullInfo
  /// * UpdateSupergroupFullInfo
  /// * UpdateServiceNotification
  /// * UpdateFile
  /// * UpdateFileGenerationStart
  /// * UpdateFileGenerationStop
  /// * UpdateCall
  /// * UpdateUserPrivacySettingRules
  /// * UpdateUnreadMessageCount
  /// * UpdateUnreadChatCount
  /// * UpdateOption
  /// * UpdateStickerSet
  /// * UpdateInstalledStickerSets
  /// * UpdateTrendingStickerSets
  /// * UpdateRecentStickers
  /// * UpdateFavoriteStickers
  /// * UpdateSavedAnimations
  /// * UpdateSelectedBackground
  /// * UpdateLanguagePackStrings
  /// * UpdateConnectionState
  /// * UpdateTermsOfService
  /// * UpdateUsersNearby
  /// * UpdateDiceEmojis
  /// * UpdateAnimationSearchParameters
  /// * UpdateSuggestedActions
  /// * UpdateNewInlineQuery
  /// * UpdateNewChosenInlineResult
  /// * UpdateNewCallbackQuery
  /// * UpdateNewInlineCallbackQuery
  /// * UpdateNewShippingQuery
  /// * UpdateNewPreCheckoutQuery
  /// * UpdateNewCustomEvent
  /// * UpdateNewCustomQuery
  /// * UpdatePoll
  /// * UpdatePollAnswer
  factory Update.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case UpdateAuthorizationState.CONSTRUCTOR:
        return UpdateAuthorizationState.fromJson(json);
      case UpdateNewMessage.CONSTRUCTOR:
        return UpdateNewMessage.fromJson(json);
      case UpdateMessageSendAcknowledged.CONSTRUCTOR:
        return UpdateMessageSendAcknowledged.fromJson(json);
      case UpdateMessageSendSucceeded.CONSTRUCTOR:
        return UpdateMessageSendSucceeded.fromJson(json);
      case UpdateMessageSendFailed.CONSTRUCTOR:
        return UpdateMessageSendFailed.fromJson(json);
      case UpdateMessageContent.CONSTRUCTOR:
        return UpdateMessageContent.fromJson(json);
      case UpdateMessageEdited.CONSTRUCTOR:
        return UpdateMessageEdited.fromJson(json);
      case UpdateMessageViews.CONSTRUCTOR:
        return UpdateMessageViews.fromJson(json);
      case UpdateMessageContentOpened.CONSTRUCTOR:
        return UpdateMessageContentOpened.fromJson(json);
      case UpdateMessageMentionRead.CONSTRUCTOR:
        return UpdateMessageMentionRead.fromJson(json);
      case UpdateMessageLiveLocationViewed.CONSTRUCTOR:
        return UpdateMessageLiveLocationViewed.fromJson(json);
      case UpdateNewChat.CONSTRUCTOR:
        return UpdateNewChat.fromJson(json);
      case UpdateChatTitle.CONSTRUCTOR:
        return UpdateChatTitle.fromJson(json);
      case UpdateChatPhoto.CONSTRUCTOR:
        return UpdateChatPhoto.fromJson(json);
      case UpdateChatPermissions.CONSTRUCTOR:
        return UpdateChatPermissions.fromJson(json);
      case UpdateChatLastMessage.CONSTRUCTOR:
        return UpdateChatLastMessage.fromJson(json);
      case UpdateChatPosition.CONSTRUCTOR:
        return UpdateChatPosition.fromJson(json);
      case UpdateChatIsMarkedAsUnread.CONSTRUCTOR:
        return UpdateChatIsMarkedAsUnread.fromJson(json);
      case UpdateChatHasScheduledMessages.CONSTRUCTOR:
        return UpdateChatHasScheduledMessages.fromJson(json);
      case UpdateChatDefaultDisableNotification.CONSTRUCTOR:
        return UpdateChatDefaultDisableNotification.fromJson(json);
      case UpdateChatReadInbox.CONSTRUCTOR:
        return UpdateChatReadInbox.fromJson(json);
      case UpdateChatReadOutbox.CONSTRUCTOR:
        return UpdateChatReadOutbox.fromJson(json);
      case UpdateChatUnreadMentionCount.CONSTRUCTOR:
        return UpdateChatUnreadMentionCount.fromJson(json);
      case UpdateChatNotificationSettings.CONSTRUCTOR:
        return UpdateChatNotificationSettings.fromJson(json);
      case UpdateScopeNotificationSettings.CONSTRUCTOR:
        return UpdateScopeNotificationSettings.fromJson(json);
      case UpdateChatActionBar.CONSTRUCTOR:
        return UpdateChatActionBar.fromJson(json);
      case UpdateChatPinnedMessage.CONSTRUCTOR:
        return UpdateChatPinnedMessage.fromJson(json);
      case UpdateChatReplyMarkup.CONSTRUCTOR:
        return UpdateChatReplyMarkup.fromJson(json);
      case UpdateChatDraftMessage.CONSTRUCTOR:
        return UpdateChatDraftMessage.fromJson(json);
      case UpdateChatFilters.CONSTRUCTOR:
        return UpdateChatFilters.fromJson(json);
      case UpdateChatOnlineMemberCount.CONSTRUCTOR:
        return UpdateChatOnlineMemberCount.fromJson(json);
      case UpdateNotification.CONSTRUCTOR:
        return UpdateNotification.fromJson(json);
      case UpdateNotificationGroup.CONSTRUCTOR:
        return UpdateNotificationGroup.fromJson(json);
      case UpdateActiveNotifications.CONSTRUCTOR:
        return UpdateActiveNotifications.fromJson(json);
      case UpdateHavePendingNotifications.CONSTRUCTOR:
        return UpdateHavePendingNotifications.fromJson(json);
      case UpdateDeleteMessages.CONSTRUCTOR:
        return UpdateDeleteMessages.fromJson(json);
      case UpdateUserChatAction.CONSTRUCTOR:
        return UpdateUserChatAction.fromJson(json);
      case UpdateUserStatus.CONSTRUCTOR:
        return UpdateUserStatus.fromJson(json);
      case UpdateUser.CONSTRUCTOR:
        return UpdateUser.fromJson(json);
      case UpdateBasicGroup.CONSTRUCTOR:
        return UpdateBasicGroup.fromJson(json);
      case UpdateSupergroup.CONSTRUCTOR:
        return UpdateSupergroup.fromJson(json);
      case UpdateSecretChat.CONSTRUCTOR:
        return UpdateSecretChat.fromJson(json);
      case UpdateUserFullInfo.CONSTRUCTOR:
        return UpdateUserFullInfo.fromJson(json);
      case UpdateBasicGroupFullInfo.CONSTRUCTOR:
        return UpdateBasicGroupFullInfo.fromJson(json);
      case UpdateSupergroupFullInfo.CONSTRUCTOR:
        return UpdateSupergroupFullInfo.fromJson(json);
      case UpdateServiceNotification.CONSTRUCTOR:
        return UpdateServiceNotification.fromJson(json);
      case UpdateFile.CONSTRUCTOR:
        return UpdateFile.fromJson(json);
      case UpdateFileGenerationStart.CONSTRUCTOR:
        return UpdateFileGenerationStart.fromJson(json);
      case UpdateFileGenerationStop.CONSTRUCTOR:
        return UpdateFileGenerationStop.fromJson(json);
      case UpdateCall.CONSTRUCTOR:
        return UpdateCall.fromJson(json);
      case UpdateUserPrivacySettingRules.CONSTRUCTOR:
        return UpdateUserPrivacySettingRules.fromJson(json);
      case UpdateUnreadMessageCount.CONSTRUCTOR:
        return UpdateUnreadMessageCount.fromJson(json);
      case UpdateUnreadChatCount.CONSTRUCTOR:
        return UpdateUnreadChatCount.fromJson(json);
      case UpdateOption.CONSTRUCTOR:
        return UpdateOption.fromJson(json);
      case UpdateStickerSet.CONSTRUCTOR:
        return UpdateStickerSet.fromJson(json);
      case UpdateInstalledStickerSets.CONSTRUCTOR:
        return UpdateInstalledStickerSets.fromJson(json);
      case UpdateTrendingStickerSets.CONSTRUCTOR:
        return UpdateTrendingStickerSets.fromJson(json);
      case UpdateRecentStickers.CONSTRUCTOR:
        return UpdateRecentStickers.fromJson(json);
      case UpdateFavoriteStickers.CONSTRUCTOR:
        return UpdateFavoriteStickers.fromJson(json);
      case UpdateSavedAnimations.CONSTRUCTOR:
        return UpdateSavedAnimations.fromJson(json);
      case UpdateSelectedBackground.CONSTRUCTOR:
        return UpdateSelectedBackground.fromJson(json);
      case UpdateLanguagePackStrings.CONSTRUCTOR:
        return UpdateLanguagePackStrings.fromJson(json);
      case UpdateConnectionState.CONSTRUCTOR:
        return UpdateConnectionState.fromJson(json);
      case UpdateTermsOfService.CONSTRUCTOR:
        return UpdateTermsOfService.fromJson(json);
      case UpdateUsersNearby.CONSTRUCTOR:
        return UpdateUsersNearby.fromJson(json);
      case UpdateDiceEmojis.CONSTRUCTOR:
        return UpdateDiceEmojis.fromJson(json);
      case UpdateAnimationSearchParameters.CONSTRUCTOR:
        return UpdateAnimationSearchParameters.fromJson(json);
      case UpdateSuggestedActions.CONSTRUCTOR:
        return UpdateSuggestedActions.fromJson(json);
      case UpdateNewInlineQuery.CONSTRUCTOR:
        return UpdateNewInlineQuery.fromJson(json);
      case UpdateNewChosenInlineResult.CONSTRUCTOR:
        return UpdateNewChosenInlineResult.fromJson(json);
      case UpdateNewCallbackQuery.CONSTRUCTOR:
        return UpdateNewCallbackQuery.fromJson(json);
      case UpdateNewInlineCallbackQuery.CONSTRUCTOR:
        return UpdateNewInlineCallbackQuery.fromJson(json);
      case UpdateNewShippingQuery.CONSTRUCTOR:
        return UpdateNewShippingQuery.fromJson(json);
      case UpdateNewPreCheckoutQuery.CONSTRUCTOR:
        return UpdateNewPreCheckoutQuery.fromJson(json);
      case UpdateNewCustomEvent.CONSTRUCTOR:
        return UpdateNewCustomEvent.fromJson(json);
      case UpdateNewCustomQuery.CONSTRUCTOR:
        return UpdateNewCustomQuery.fromJson(json);
      case UpdatePoll.CONSTRUCTOR:
        return UpdatePoll.fromJson(json);
      case UpdatePollAnswer.CONSTRUCTOR:
        return UpdatePollAnswer.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'update';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateAuthorizationState extends Update {
  AuthorizationState authorizationState;
  dynamic extra;

  /// The user authorization state has changed. 
  /// [authorizationState] New authorization state
  UpdateAuthorizationState({this.authorizationState});

  /// Parse from a json
  UpdateAuthorizationState.fromJson(Map<String, dynamic> json)  {
    this.authorizationState = AuthorizationState.fromJson(json['authorization_state'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "authorization_state": this.authorizationState == null ? null : this.authorizationState.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateAuthorizationState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewMessage extends Update {
  Message message;
  dynamic extra;

  /// A new message was received; can also be an outgoing message. 
  /// [message] The new message
  UpdateNewMessage({this.message});

  /// Parse from a json
  UpdateNewMessage.fromJson(Map<String, dynamic> json)  {
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": this.message == null ? null : this.message.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateNewMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageSendAcknowledged extends Update {
  int chatId;
  int messageId;
  dynamic extra;

  /// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully or even that the send message request will be processed. This update will be sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message. 
  /// [chatId] The chat identifier of the sent message. 
  /// [messageId] A temporary message identifier
  UpdateMessageSendAcknowledged({this.chatId,
    this.messageId});

  /// Parse from a json
  UpdateMessageSendAcknowledged.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
    };
  }

  static const CONSTRUCTOR = 'updateMessageSendAcknowledged';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageSendSucceeded extends Update {
  Message message;
  int oldMessageId;
  dynamic extra;

  /// A message has been successfully sent. 
  /// [message] Information about the sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change . 
  /// [oldMessageId] The previous temporary message identifier
  UpdateMessageSendSucceeded({this.message,
    this.oldMessageId});

  /// Parse from a json
  UpdateMessageSendSucceeded.fromJson(Map<String, dynamic> json)  {
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
    this.oldMessageId = json['old_message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": this.message == null ? null : this.message.toJson(),
      "old_message_id": this.oldMessageId,
    };
  }

  static const CONSTRUCTOR = 'updateMessageSendSucceeded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageSendFailed extends Update {
  Message message;
  int oldMessageId;
  int errorCode;
  String errorMessage;
  dynamic extra;

  /// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update. 
  /// [message] Contains information about the message which failed to send. 
  /// [oldMessageId] The previous temporary message identifier . 
  /// [errorCode] An error code . 
  /// [errorMessage] Error message
  UpdateMessageSendFailed({this.message,
    this.oldMessageId,
    this.errorCode,
    this.errorMessage});

  /// Parse from a json
  UpdateMessageSendFailed.fromJson(Map<String, dynamic> json)  {
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
    this.oldMessageId = json['old_message_id'];
    this.errorCode = json['error_code'];
    this.errorMessage = json['error_message'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": this.message == null ? null : this.message.toJson(),
      "old_message_id": this.oldMessageId,
      "error_code": this.errorCode,
      "error_message": this.errorMessage,
    };
  }

  static const CONSTRUCTOR = 'updateMessageSendFailed';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageContent extends Update {
  int chatId;
  int messageId;
  MessageContent newContent;
  dynamic extra;

  /// The message content has changed. 
  /// [chatId] Chat identifier . 
  /// [messageId] Message identifier . 
  /// [newContent] New message content
  UpdateMessageContent({this.chatId,
    this.messageId,
    this.newContent});

  /// Parse from a json
  UpdateMessageContent.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.newContent = MessageContent.fromJson(json['new_content'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "new_content": this.newContent == null ? null : this.newContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateMessageContent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageEdited extends Update {
  int chatId;
  int messageId;
  int editDate;
  ReplyMarkup replyMarkup;
  dynamic extra;

  /// A message was edited. Changes in the message content will come in a separate updateMessageContent. 
  /// [chatId] Chat identifier . 
  /// [messageId] Message identifier . 
  /// [editDate] Point in time (Unix timestamp) when the message was edited . 
  /// [replyMarkup] New message reply markup; may be null
  UpdateMessageEdited({this.chatId,
    this.messageId,
    this.editDate,
    this.replyMarkup});

  /// Parse from a json
  UpdateMessageEdited.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.editDate = json['edit_date'];
    this.replyMarkup = ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "edit_date": this.editDate,
      "reply_markup": this.replyMarkup == null ? null : this.replyMarkup.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateMessageEdited';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageViews extends Update {
  int chatId;
  int messageId;
  int views;
  dynamic extra;

  /// The view count of the message has changed. 
  /// [chatId] Chat identifier . 
  /// [messageId] Message identifier . 
  /// [views] New value of the view count
  UpdateMessageViews({this.chatId,
    this.messageId,
    this.views});

  /// Parse from a json
  UpdateMessageViews.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.views = json['views'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "views": this.views,
    };
  }

  static const CONSTRUCTOR = 'updateMessageViews';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageContentOpened extends Update {
  int chatId;
  int messageId;
  dynamic extra;

  /// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the TTL timer for self-destructing messages. 
  /// [chatId] Chat identifier . 
  /// [messageId] Message identifier
  UpdateMessageContentOpened({this.chatId,
    this.messageId});

  /// Parse from a json
  UpdateMessageContentOpened.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
    };
  }

  static const CONSTRUCTOR = 'updateMessageContentOpened';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageMentionRead extends Update {
  int chatId;
  int messageId;
  int unreadMentionCount;
  dynamic extra;

  /// A message with an unread mention was read. 
  /// [chatId] Chat identifier . 
  /// [messageId] Message identifier . 
  /// [unreadMentionCount] The new number of unread mention messages left in the chat
  UpdateMessageMentionRead({this.chatId,
    this.messageId,
    this.unreadMentionCount});

  /// Parse from a json
  UpdateMessageMentionRead.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.unreadMentionCount = json['unread_mention_count'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "unread_mention_count": this.unreadMentionCount,
    };
  }

  static const CONSTRUCTOR = 'updateMessageMentionRead';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateMessageLiveLocationViewed extends Update {
  int chatId;
  int messageId;
  dynamic extra;

  /// A message with a live location was viewed. When the update is received, the application is supposed to update the live location. 
  /// [chatId] Identifier of the chat with the live location message. 
  /// [messageId] Identifier of the message with live location
  UpdateMessageLiveLocationViewed({this.chatId,
    this.messageId});

  /// Parse from a json
  UpdateMessageLiveLocationViewed.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
    };
  }

  static const CONSTRUCTOR = 'updateMessageLiveLocationViewed';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewChat extends Update {
  Chat chat;
  dynamic extra;

  /// A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates. 
  /// [chat] The chat
  UpdateNewChat({this.chat});

  /// Parse from a json
  UpdateNewChat.fromJson(Map<String, dynamic> json)  {
    this.chat = Chat.fromJson(json['chat'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat": this.chat == null ? null : this.chat.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateNewChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatTitle extends Update {
  int chatId;
  String title;
  dynamic extra;

  /// The title of a chat was changed. 
  /// [chatId] Chat identifier . 
  /// [title] The new chat title
  UpdateChatTitle({this.chatId,
    this.title});

  /// Parse from a json
  UpdateChatTitle.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.title = json['title'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "title": this.title,
    };
  }

  static const CONSTRUCTOR = 'updateChatTitle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatPhoto extends Update {
  int chatId;
  ChatPhotoInfo photo;
  dynamic extra;

  /// A chat photo was changed. 
  /// [chatId] Chat identifier . 
  /// [photo] The new chat photo; may be null
  UpdateChatPhoto({this.chatId,
    this.photo});

  /// Parse from a json
  UpdateChatPhoto.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.photo = ChatPhotoInfo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "photo": this.photo == null ? null : this.photo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateChatPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatPermissions extends Update {
  int chatId;
  ChatPermissions permissions;
  dynamic extra;

  /// Chat permissions was changed. 
  /// [chatId] Chat identifier . 
  /// [permissions] The new chat permissions
  UpdateChatPermissions({this.chatId,
    this.permissions});

  /// Parse from a json
  UpdateChatPermissions.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.permissions = ChatPermissions.fromJson(json['permissions'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "permissions": this.permissions == null ? null : this.permissions.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateChatPermissions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatLastMessage extends Update {
  int chatId;
  Message lastMessage;
  List<ChatPosition> positions;
  dynamic extra;

  /// The last message of a chat was changed. If last_message is null, then the last message in the chat became unknown. Some new unknown messages might be added to the chat in this case. 
  /// [chatId] Chat identifier . 
  /// [lastMessage] The new last message in the chat; may be null . 
  /// [positions] The new chat positions in the chat lists
  UpdateChatLastMessage({this.chatId,
    this.lastMessage,
    this.positions});

  /// Parse from a json
  UpdateChatLastMessage.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.lastMessage = Message.fromJson(json['last_message'] ?? <String, dynamic>{});
    this.positions = List<ChatPosition>.from((json['positions'] ?? []).map((item) => ChatPosition.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "last_message": this.lastMessage == null ? null : this.lastMessage.toJson(),
      "positions": this.positions.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateChatLastMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatPosition extends Update {
  int chatId;
  ChatPosition position;
  dynamic extra;

  /// The position of a chat in a chat list has changed. Instead of this update updateChatLastMessage or updateChatDraftMessage might be sent. 
  /// [chatId] Chat identifier . 
  /// [position] New chat position. If new order is 0, then the chat needs to be removed from the list
  UpdateChatPosition({this.chatId,
    this.position});

  /// Parse from a json
  UpdateChatPosition.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.position = ChatPosition.fromJson(json['position'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "position": this.position == null ? null : this.position.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateChatPosition';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatIsMarkedAsUnread extends Update {
  int chatId;
  bool isMarkedAsUnread;
  dynamic extra;

  /// A chat was marked as unread or was read. 
  /// [chatId] Chat identifier . 
  /// [isMarkedAsUnread] New value of is_marked_as_unread
  UpdateChatIsMarkedAsUnread({this.chatId,
    this.isMarkedAsUnread});

  /// Parse from a json
  UpdateChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.isMarkedAsUnread = json['is_marked_as_unread'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "is_marked_as_unread": this.isMarkedAsUnread,
    };
  }

  static const CONSTRUCTOR = 'updateChatIsMarkedAsUnread';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatHasScheduledMessages extends Update {
  int chatId;
  bool hasScheduledMessages;
  dynamic extra;

  /// A chat's has_scheduled_messages field has changed. 
  /// [chatId] Chat identifier . 
  /// [hasScheduledMessages] New value of has_scheduled_messages
  UpdateChatHasScheduledMessages({this.chatId,
    this.hasScheduledMessages});

  /// Parse from a json
  UpdateChatHasScheduledMessages.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.hasScheduledMessages = json['has_scheduled_messages'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "has_scheduled_messages": this.hasScheduledMessages,
    };
  }

  static const CONSTRUCTOR = 'updateChatHasScheduledMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatDefaultDisableNotification extends Update {
  int chatId;
  bool defaultDisableNotification;
  dynamic extra;

  /// The value of the default disable_notification parameter, used when a message is sent to the chat, was changed. 
  /// [chatId] Chat identifier . 
  /// [defaultDisableNotification] The new default_disable_notification value
  UpdateChatDefaultDisableNotification({this.chatId,
    this.defaultDisableNotification});

  /// Parse from a json
  UpdateChatDefaultDisableNotification.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.defaultDisableNotification = json['default_disable_notification'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "default_disable_notification": this.defaultDisableNotification,
    };
  }

  static const CONSTRUCTOR = 'updateChatDefaultDisableNotification';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatReadInbox extends Update {
  int chatId;
  int lastReadInboxMessageId;
  int unreadCount;
  dynamic extra;

  /// Incoming messages were read or number of unread messages has been changed. 
  /// [chatId] Chat identifier . 
  /// [lastReadInboxMessageId] Identifier of the last read incoming message . 
  /// [unreadCount] The number of unread messages left in the chat
  UpdateChatReadInbox({this.chatId,
    this.lastReadInboxMessageId,
    this.unreadCount});

  /// Parse from a json
  UpdateChatReadInbox.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.lastReadInboxMessageId = json['last_read_inbox_message_id'];
    this.unreadCount = json['unread_count'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "last_read_inbox_message_id": this.lastReadInboxMessageId,
      "unread_count": this.unreadCount,
    };
  }

  static const CONSTRUCTOR = 'updateChatReadInbox';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatReadOutbox extends Update {
  int chatId;
  int lastReadOutboxMessageId;
  dynamic extra;

  /// Outgoing messages were read. 
  /// [chatId] Chat identifier . 
  /// [lastReadOutboxMessageId] Identifier of last read outgoing message
  UpdateChatReadOutbox({this.chatId,
    this.lastReadOutboxMessageId});

  /// Parse from a json
  UpdateChatReadOutbox.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.lastReadOutboxMessageId = json['last_read_outbox_message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "last_read_outbox_message_id": this.lastReadOutboxMessageId,
    };
  }

  static const CONSTRUCTOR = 'updateChatReadOutbox';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatUnreadMentionCount extends Update {
  int chatId;
  int unreadMentionCount;
  dynamic extra;

  /// The chat unread_mention_count has changed. 
  /// [chatId] Chat identifier . 
  /// [unreadMentionCount] The number of unread mention messages left in the chat
  UpdateChatUnreadMentionCount({this.chatId,
    this.unreadMentionCount});

  /// Parse from a json
  UpdateChatUnreadMentionCount.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.unreadMentionCount = json['unread_mention_count'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "unread_mention_count": this.unreadMentionCount,
    };
  }

  static const CONSTRUCTOR = 'updateChatUnreadMentionCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatNotificationSettings extends Update {
  int chatId;
  ChatNotificationSettings notificationSettings;
  dynamic extra;

  /// Notification settings for a chat were changed. 
  /// [chatId] Chat identifier . 
  /// [notificationSettings] The new notification settings
  UpdateChatNotificationSettings({this.chatId,
    this.notificationSettings});

  /// Parse from a json
  UpdateChatNotificationSettings.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.notificationSettings = ChatNotificationSettings.fromJson(json['notification_settings'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "notification_settings": this.notificationSettings == null ? null : this.notificationSettings.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateChatNotificationSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateScopeNotificationSettings extends Update {
  NotificationSettingsScope scope;
  ScopeNotificationSettings notificationSettings;
  dynamic extra;

  /// Notification settings for some type of chats were updated. 
  /// [scope] Types of chats for which notification settings were updated . 
  /// [notificationSettings] The new notification settings
  UpdateScopeNotificationSettings({this.scope,
    this.notificationSettings});

  /// Parse from a json
  UpdateScopeNotificationSettings.fromJson(Map<String, dynamic> json)  {
    this.scope = NotificationSettingsScope.fromJson(json['scope'] ?? <String, dynamic>{});
    this.notificationSettings = ScopeNotificationSettings.fromJson(json['notification_settings'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "scope": this.scope == null ? null : this.scope.toJson(),
      "notification_settings": this.notificationSettings == null ? null : this.notificationSettings.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateScopeNotificationSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatActionBar extends Update {
  int chatId;
  ChatActionBar actionBar;
  dynamic extra;

  /// The chat action bar was changed. 
  /// [chatId] Chat identifier . 
  /// [actionBar] The new value of the action bar; may be null
  UpdateChatActionBar({this.chatId,
    this.actionBar});

  /// Parse from a json
  UpdateChatActionBar.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.actionBar = ChatActionBar.fromJson(json['action_bar'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "action_bar": this.actionBar == null ? null : this.actionBar.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateChatActionBar';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatPinnedMessage extends Update {
  int chatId;
  int pinnedMessageId;
  dynamic extra;

  /// The chat pinned message was changed. 
  /// [chatId] Chat identifier . 
  /// [pinnedMessageId] The new identifier of the pinned message; 0 if there is no pinned message in the chat
  UpdateChatPinnedMessage({this.chatId,
    this.pinnedMessageId});

  /// Parse from a json
  UpdateChatPinnedMessage.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.pinnedMessageId = json['pinned_message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "pinned_message_id": this.pinnedMessageId,
    };
  }

  static const CONSTRUCTOR = 'updateChatPinnedMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatReplyMarkup extends Update {
  int chatId;
  int replyMarkupMessageId;
  dynamic extra;

  /// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user. 
  /// [chatId] Chat identifier. 
  /// [replyMarkupMessageId] Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
  UpdateChatReplyMarkup({this.chatId,
    this.replyMarkupMessageId});

  /// Parse from a json
  UpdateChatReplyMarkup.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.replyMarkupMessageId = json['reply_markup_message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "reply_markup_message_id": this.replyMarkupMessageId,
    };
  }

  static const CONSTRUCTOR = 'updateChatReplyMarkup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatDraftMessage extends Update {
  int chatId;
  DraftMessage draftMessage;
  List<ChatPosition> positions;
  dynamic extra;

  /// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update shouldn't be applied. 
  /// [chatId] Chat identifier . 
  /// [draftMessage] The new draft message; may be null . 
  /// [positions] The new chat positions in the chat lists
  UpdateChatDraftMessage({this.chatId,
    this.draftMessage,
    this.positions});

  /// Parse from a json
  UpdateChatDraftMessage.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.draftMessage = DraftMessage.fromJson(json['draft_message'] ?? <String, dynamic>{});
    this.positions = List<ChatPosition>.from((json['positions'] ?? []).map((item) => ChatPosition.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "draft_message": this.draftMessage == null ? null : this.draftMessage.toJson(),
      "positions": this.positions.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateChatDraftMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatFilters extends Update {
  List<ChatFilterInfo> chatFilters;
  dynamic extra;

  /// The list of chat filters or a chat filter has changed. 
  /// [chatFilters] The new list of chat filters
  UpdateChatFilters({this.chatFilters});

  /// Parse from a json
  UpdateChatFilters.fromJson(Map<String, dynamic> json)  {
    this.chatFilters = List<ChatFilterInfo>.from((json['chat_filters'] ?? []).map((item) => ChatFilterInfo.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filters": this.chatFilters.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateChatFilters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateChatOnlineMemberCount extends Update {
  int chatId;
  int onlineMemberCount;
  dynamic extra;

  /// The number of online group members has changed. This update with non-zero count is sent only for currently opened chats. There is no guarantee that it will be sent just after the count has changed. 
  /// [chatId] Identifier of the chat . 
  /// [onlineMemberCount] New number of online members in the chat, or 0 if unknown
  UpdateChatOnlineMemberCount({this.chatId,
    this.onlineMemberCount});

  /// Parse from a json
  UpdateChatOnlineMemberCount.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.onlineMemberCount = json['online_member_count'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "online_member_count": this.onlineMemberCount,
    };
  }

  static const CONSTRUCTOR = 'updateChatOnlineMemberCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNotification extends Update {
  int notificationGroupId;
  Notification notification;
  dynamic extra;

  /// A notification was changed. 
  /// [notificationGroupId] Unique notification group identifier . 
  /// [notification] Changed notification
  UpdateNotification({this.notificationGroupId,
    this.notification});

  /// Parse from a json
  UpdateNotification.fromJson(Map<String, dynamic> json)  {
    this.notificationGroupId = json['notification_group_id'];
    this.notification = Notification.fromJson(json['notification'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "notification_group_id": this.notificationGroupId,
      "notification": this.notification == null ? null : this.notification.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateNotification';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNotificationGroup extends Update {
  int notificationGroupId;
  NotificationGroupType type;
  int chatId;
  int notificationSettingsChatId;
  bool isSilent;
  int totalCount;
  List<Notification> addedNotifications;
  List<int> removedNotificationIds;
  dynamic extra;

  /// A list of active notifications in a notification group has changed. 
  /// [notificationGroupId] Unique notification group identifier. 
  /// [type] New type of the notification group. 
  /// [chatId] Identifier of a chat to which all notifications in the group belong. 
  /// [notificationSettingsChatId] Chat identifier, which notification settings must be applied to the added notifications. 
  /// [isSilent] True, if the notifications should be shown without sound. 
  /// [totalCount] Total number of unread notifications in the group, can be bigger than number of active notifications. 
  /// [addedNotifications] List of added group notifications, sorted by notification updateNotificationGroup. 
  /// [removedNotificationIds] Identifiers of removed group notifications, sorted by notification updateNotificationGroup
  UpdateNotificationGroup({this.notificationGroupId,
    this.type,
    this.chatId,
    this.notificationSettingsChatId,
    this.isSilent,
    this.totalCount,
    this.addedNotifications,
    this.removedNotificationIds});

  /// Parse from a json
  UpdateNotificationGroup.fromJson(Map<String, dynamic> json)  {
    this.notificationGroupId = json['notification_group_id'];
    this.type = NotificationGroupType.fromJson(json['type'] ?? <String, dynamic>{});
    this.chatId = json['chat_id'];
    this.notificationSettingsChatId = json['notification_settings_chat_id'];
    this.isSilent = json['is_silent'];
    this.totalCount = json['total_count'];
    this.addedNotifications = List<Notification>.from((json['added_notifications'] ?? []).map((item) => Notification.fromJson(item ?? <String, dynamic>{})).toList());
    this.removedNotificationIds = List<int>.from((json['removed_notification_ids'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "notification_group_id": this.notificationGroupId,
      "type": this.type == null ? null : this.type.toJson(),
      "chat_id": this.chatId,
      "notification_settings_chat_id": this.notificationSettingsChatId,
      "is_silent": this.isSilent,
      "total_count": this.totalCount,
      "added_notifications": this.addedNotifications.map((i) => i.toJson()).toList(),
      "removed_notification_ids": this.removedNotificationIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateNotificationGroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateActiveNotifications extends Update {
  List<NotificationGroup> groups;
  dynamic extra;

  /// Contains active notifications that was shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update. 
  /// [groups] Lists of active notification groups
  UpdateActiveNotifications({this.groups});

  /// Parse from a json
  UpdateActiveNotifications.fromJson(Map<String, dynamic> json)  {
    this.groups = List<NotificationGroup>.from((json['groups'] ?? []).map((item) => NotificationGroup.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "groups": this.groups.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateActiveNotifications';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateHavePendingNotifications extends Update {
  bool haveDelayedNotifications;
  bool haveUnreceivedNotifications;
  dynamic extra;

  /// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications. 
  /// [haveDelayedNotifications] True, if there are some delayed notification updates, which will be sent soon. 
  /// [haveUnreceivedNotifications] True, if there can be some yet unreceived notifications, which are being fetched from the server
  UpdateHavePendingNotifications({this.haveDelayedNotifications,
    this.haveUnreceivedNotifications});

  /// Parse from a json
  UpdateHavePendingNotifications.fromJson(Map<String, dynamic> json)  {
    this.haveDelayedNotifications = json['have_delayed_notifications'];
    this.haveUnreceivedNotifications = json['have_unreceived_notifications'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "have_delayed_notifications": this.haveDelayedNotifications,
      "have_unreceived_notifications": this.haveUnreceivedNotifications,
    };
  }

  static const CONSTRUCTOR = 'updateHavePendingNotifications';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateDeleteMessages extends Update {
  int chatId;
  List<int> messageIds;
  bool isPermanent;
  bool fromCache;
  dynamic extra;

  /// Some messages were deleted. 
  /// [chatId] Chat identifier . 
  /// [messageIds] Identifiers of the deleted messages. 
  /// [isPermanent] True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible). 
  /// [fromCache] True, if the messages are deleted only from the cache and can possibly be retrieved again in the future
  UpdateDeleteMessages({this.chatId,
    this.messageIds,
    this.isPermanent,
    this.fromCache});

  /// Parse from a json
  UpdateDeleteMessages.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.messageIds = List<int>.from((json['message_ids'] ?? []).map((item) => item).toList());
    this.isPermanent = json['is_permanent'];
    this.fromCache = json['from_cache'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_ids": this.messageIds.map((i) => i).toList(),
      "is_permanent": this.isPermanent,
      "from_cache": this.fromCache,
    };
  }

  static const CONSTRUCTOR = 'updateDeleteMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUserChatAction extends Update {
  int chatId;
  int userId;
  ChatAction action;
  dynamic extra;

  /// User activity in the chat has changed. 
  /// [chatId] Chat identifier . 
  /// [userId] Identifier of a user performing an action . 
  /// [action] The action description
  UpdateUserChatAction({this.chatId,
    this.userId,
    this.action});

  /// Parse from a json
  UpdateUserChatAction.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.userId = json['user_id'];
    this.action = ChatAction.fromJson(json['action'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "user_id": this.userId,
      "action": this.action == null ? null : this.action.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateUserChatAction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUserStatus extends Update {
  int userId;
  UserStatus status;
  dynamic extra;

  /// The user went online or offline. 
  /// [userId] User identifier . 
  /// [status] New status of the user
  UpdateUserStatus({this.userId,
    this.status});

  /// Parse from a json
  UpdateUserStatus.fromJson(Map<String, dynamic> json)  {
    this.userId = json['user_id'];
    this.status = UserStatus.fromJson(json['status'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "status": this.status == null ? null : this.status.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateUserStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUser extends Update {
  User user;
  dynamic extra;

  /// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application. 
  /// [user] New data about the user
  UpdateUser({this.user});

  /// Parse from a json
  UpdateUser.fromJson(Map<String, dynamic> json)  {
    this.user = User.fromJson(json['user'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user": this.user == null ? null : this.user.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateBasicGroup extends Update {
  BasicGroup basicGroup;
  dynamic extra;

  /// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application. 
  /// [basicGroup] New data about the group
  UpdateBasicGroup({this.basicGroup});

  /// Parse from a json
  UpdateBasicGroup.fromJson(Map<String, dynamic> json)  {
    this.basicGroup = BasicGroup.fromJson(json['basic_group'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "basic_group": this.basicGroup == null ? null : this.basicGroup.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateBasicGroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSupergroup extends Update {
  Supergroup supergroup;
  dynamic extra;

  /// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application. 
  /// [supergroup] New data about the supergroup
  UpdateSupergroup({this.supergroup});

  /// Parse from a json
  UpdateSupergroup.fromJson(Map<String, dynamic> json)  {
    this.supergroup = Supergroup.fromJson(json['supergroup'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup": this.supergroup == null ? null : this.supergroup.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateSupergroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSecretChat extends Update {
  SecretChat secretChat;
  dynamic extra;

  /// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application. 
  /// [secretChat] New data about the secret chat
  UpdateSecretChat({this.secretChat});

  /// Parse from a json
  UpdateSecretChat.fromJson(Map<String, dynamic> json)  {
    this.secretChat = SecretChat.fromJson(json['secret_chat'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat": this.secretChat == null ? null : this.secretChat.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateSecretChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUserFullInfo extends Update {
  int userId;
  UserFullInfo userFullInfo;
  dynamic extra;

  /// Some data from userFullInfo has been changed. 
  /// [userId] User identifier . 
  /// [userFullInfo] New full information about the user
  UpdateUserFullInfo({this.userId,
    this.userFullInfo});

  /// Parse from a json
  UpdateUserFullInfo.fromJson(Map<String, dynamic> json)  {
    this.userId = json['user_id'];
    this.userFullInfo = UserFullInfo.fromJson(json['user_full_info'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "user_full_info": this.userFullInfo == null ? null : this.userFullInfo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateUserFullInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateBasicGroupFullInfo extends Update {
  int basicGroupId;
  BasicGroupFullInfo basicGroupFullInfo;
  dynamic extra;

  /// Some data from basicGroupFullInfo has been changed. 
  /// [basicGroupId] Identifier of a basic group . 
  /// [basicGroupFullInfo] New full information about the group
  UpdateBasicGroupFullInfo({this.basicGroupId,
    this.basicGroupFullInfo});

  /// Parse from a json
  UpdateBasicGroupFullInfo.fromJson(Map<String, dynamic> json)  {
    this.basicGroupId = json['basic_group_id'];
    this.basicGroupFullInfo = BasicGroupFullInfo.fromJson(json['basic_group_full_info'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": this.basicGroupId,
      "basic_group_full_info": this.basicGroupFullInfo == null ? null : this.basicGroupFullInfo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateBasicGroupFullInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSupergroupFullInfo extends Update {
  int supergroupId;
  SupergroupFullInfo supergroupFullInfo;
  dynamic extra;

  /// Some data from supergroupFullInfo has been changed. 
  /// [supergroupId] Identifier of the supergroup or channel . 
  /// [supergroupFullInfo] New full information about the supergroup
  UpdateSupergroupFullInfo({this.supergroupId,
    this.supergroupFullInfo});

  /// Parse from a json
  UpdateSupergroupFullInfo.fromJson(Map<String, dynamic> json)  {
    this.supergroupId = json['supergroup_id'];
    this.supergroupFullInfo = SupergroupFullInfo.fromJson(json['supergroup_full_info'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "supergroup_full_info": this.supergroupFullInfo == null ? null : this.supergroupFullInfo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateSupergroupFullInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateServiceNotification extends Update {
  String type;
  MessageContent content;
  dynamic extra;

  /// Service notification from the server. Upon receiving this the application must show a popup with the content of the notification. 
  /// [type] Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" should be shown under notification; if user presses the second, all local data should be destroyed using Destroy method. 
  /// [content] Notification content
  UpdateServiceNotification({this.type,
    this.content});

  /// Parse from a json
  UpdateServiceNotification.fromJson(Map<String, dynamic> json)  {
    this.type = json['type'];
    this.content = MessageContent.fromJson(json['content'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type,
      "content": this.content == null ? null : this.content.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateServiceNotification';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFile extends Update {
  File file;
  dynamic extra;

  /// Information about a file was updated. 
  /// [file] New data about the file
  UpdateFile({this.file});

  /// Parse from a json
  UpdateFile.fromJson(Map<String, dynamic> json)  {
    this.file = File.fromJson(json['file'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file": this.file == null ? null : this.file.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFileGenerationStart extends Update {
  int generationId;
  String originalPath;
  String destinationPath;
  String conversion;
  dynamic extra;

  /// The file generation process needs to be started by the application. 
  /// [generationId] Unique identifier for the generation process. 
  /// [originalPath] The path to a file from which a new file is generated; may be empty. 
  /// [destinationPath] The path to a file that should be created and where the new file should be generated. 
  /// [conversion] String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which should be downloaded by the application
  UpdateFileGenerationStart({this.generationId,
    this.originalPath,
    this.destinationPath,
    this.conversion});

  /// Parse from a json
  UpdateFileGenerationStart.fromJson(Map<String, dynamic> json)  {
    this.generationId = json['generation_id'];
    this.originalPath = json['original_path'];
    this.destinationPath = json['destination_path'];
    this.conversion = json['conversion'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": this.generationId,
      "original_path": this.originalPath,
      "destination_path": this.destinationPath,
      "conversion": this.conversion,
    };
  }

  static const CONSTRUCTOR = 'updateFileGenerationStart';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFileGenerationStop extends Update {
  int generationId;
  dynamic extra;

  /// File generation is no longer needed. 
  /// [generationId] Unique identifier for the generation process
  UpdateFileGenerationStop({this.generationId});

  /// Parse from a json
  UpdateFileGenerationStop.fromJson(Map<String, dynamic> json)  {
    this.generationId = json['generation_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": this.generationId,
    };
  }

  static const CONSTRUCTOR = 'updateFileGenerationStop';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateCall extends Update {
  Call call;
  dynamic extra;

  /// New call was created or information about a call was updated. 
  /// [call] New data about a call
  UpdateCall({this.call});

  /// Parse from a json
  UpdateCall.fromJson(Map<String, dynamic> json)  {
    this.call = Call.fromJson(json['call'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call": this.call == null ? null : this.call.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUserPrivacySettingRules extends Update {
  UserPrivacySetting setting;
  UserPrivacySettingRules rules;
  dynamic extra;

  /// Some privacy setting rules have been changed. 
  /// [setting] The privacy setting . 
  /// [rules] New privacy rules
  UpdateUserPrivacySettingRules({this.setting,
    this.rules});

  /// Parse from a json
  UpdateUserPrivacySettingRules.fromJson(Map<String, dynamic> json)  {
    this.setting = UserPrivacySetting.fromJson(json['setting'] ?? <String, dynamic>{});
    this.rules = UserPrivacySettingRules.fromJson(json['rules'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "setting": this.setting == null ? null : this.setting.toJson(),
      "rules": this.rules == null ? null : this.rules.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateUserPrivacySettingRules';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUnreadMessageCount extends Update {
  ChatList chatList;
  int unreadCount;
  int unreadUnmutedCount;
  dynamic extra;

  /// Number of unread messages in a chat list has changed. This update is sent only if the message database is used. 
  /// [chatList] The chat list with changed number of unread messages. 
  /// [unreadCount] Total number of unread messages. 
  /// [unreadUnmutedCount] Total number of unread messages in unmuted chats
  UpdateUnreadMessageCount({this.chatList,
    this.unreadCount,
    this.unreadUnmutedCount});

  /// Parse from a json
  UpdateUnreadMessageCount.fromJson(Map<String, dynamic> json)  {
    this.chatList = ChatList.fromJson(json['chat_list'] ?? <String, dynamic>{});
    this.unreadCount = json['unread_count'];
    this.unreadUnmutedCount = json['unread_unmuted_count'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": this.chatList == null ? null : this.chatList.toJson(),
      "unread_count": this.unreadCount,
      "unread_unmuted_count": this.unreadUnmutedCount,
    };
  }

  static const CONSTRUCTOR = 'updateUnreadMessageCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUnreadChatCount extends Update {
  ChatList chatList;
  int totalCount;
  int unreadCount;
  int unreadUnmutedCount;
  int markedAsUnreadCount;
  int markedAsUnreadUnmutedCount;
  dynamic extra;

  /// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used. 
  /// [chatList] The chat list with changed number of unread messages. 
  /// [totalCount] Approximate total number of chats in the chat list. 
  /// [unreadCount] Total number of unread chats. 
  /// [unreadUnmutedCount] Total number of unread unmuted chats. 
  /// [markedAsUnreadCount] Total number of chats marked as unread. 
  /// [markedAsUnreadUnmutedCount] Total number of unmuted chats marked as unread
  UpdateUnreadChatCount({this.chatList,
    this.totalCount,
    this.unreadCount,
    this.unreadUnmutedCount,
    this.markedAsUnreadCount,
    this.markedAsUnreadUnmutedCount});

  /// Parse from a json
  UpdateUnreadChatCount.fromJson(Map<String, dynamic> json)  {
    this.chatList = ChatList.fromJson(json['chat_list'] ?? <String, dynamic>{});
    this.totalCount = json['total_count'];
    this.unreadCount = json['unread_count'];
    this.unreadUnmutedCount = json['unread_unmuted_count'];
    this.markedAsUnreadCount = json['marked_as_unread_count'];
    this.markedAsUnreadUnmutedCount = json['marked_as_unread_unmuted_count'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": this.chatList == null ? null : this.chatList.toJson(),
      "total_count": this.totalCount,
      "unread_count": this.unreadCount,
      "unread_unmuted_count": this.unreadUnmutedCount,
      "marked_as_unread_count": this.markedAsUnreadCount,
      "marked_as_unread_unmuted_count": this.markedAsUnreadUnmutedCount,
    };
  }

  static const CONSTRUCTOR = 'updateUnreadChatCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateOption extends Update {
  String name;
  OptionValue value;
  dynamic extra;

  /// An option changed its value. 
  /// [name] The option name . 
  /// [value] The new option value
  UpdateOption({this.name,
    this.value});

  /// Parse from a json
  UpdateOption.fromJson(Map<String, dynamic> json)  {
    this.name = json['name'];
    this.value = OptionValue.fromJson(json['value'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
      "value": this.value == null ? null : this.value.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateOption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateStickerSet extends Update {
  StickerSet stickerSet;
  dynamic extra;

  /// A sticker set has changed. 
  /// [stickerSet] The sticker set
  UpdateStickerSet({this.stickerSet});

  /// Parse from a json
  UpdateStickerSet.fromJson(Map<String, dynamic> json)  {
    this.stickerSet = StickerSet.fromJson(json['sticker_set'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set": this.stickerSet == null ? null : this.stickerSet.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateInstalledStickerSets extends Update {
  bool isMasks;
  List<int> stickerSetIds;
  dynamic extra;

  /// The list of installed sticker sets was updated. 
  /// [isMasks] True, if the list of installed mask sticker sets was updated . 
  /// [stickerSetIds] The new list of installed ordinary sticker sets
  UpdateInstalledStickerSets({this.isMasks,
    this.stickerSetIds});

  /// Parse from a json
  UpdateInstalledStickerSets.fromJson(Map<String, dynamic> json)  {
    this.isMasks = json['is_masks'];
    this.stickerSetIds = List<int>.from((json['sticker_set_ids'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": this.isMasks,
      "sticker_set_ids": this.stickerSetIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateInstalledStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateTrendingStickerSets extends Update {
  StickerSets stickerSets;
  dynamic extra;

  /// The list of trending sticker sets was updated or some of them were viewed. 
  /// [stickerSets] The prefix of the list of trending sticker sets with the newest trending sticker sets
  UpdateTrendingStickerSets({this.stickerSets});

  /// Parse from a json
  UpdateTrendingStickerSets.fromJson(Map<String, dynamic> json)  {
    this.stickerSets = StickerSets.fromJson(json['sticker_sets'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker_sets": this.stickerSets == null ? null : this.stickerSets.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateTrendingStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateRecentStickers extends Update {
  bool isAttached;
  List<int> stickerIds;
  dynamic extra;

  /// The list of recently used stickers was updated. 
  /// [isAttached] True, if the list of stickers attached to photo or video files was updated, otherwise the list of sent stickers is updated . 
  /// [stickerIds] The new list of file identifiers of recently used stickers
  UpdateRecentStickers({this.isAttached,
    this.stickerIds});

  /// Parse from a json
  UpdateRecentStickers.fromJson(Map<String, dynamic> json)  {
    this.isAttached = json['is_attached'];
    this.stickerIds = List<int>.from((json['sticker_ids'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_attached": this.isAttached,
      "sticker_ids": this.stickerIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateRecentStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateFavoriteStickers extends Update {
  List<int> stickerIds;
  dynamic extra;

  /// The list of favorite stickers was updated. 
  /// [stickerIds] The new list of file identifiers of favorite stickers
  UpdateFavoriteStickers({this.stickerIds});

  /// Parse from a json
  UpdateFavoriteStickers.fromJson(Map<String, dynamic> json)  {
    this.stickerIds = List<int>.from((json['sticker_ids'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker_ids": this.stickerIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateFavoriteStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSavedAnimations extends Update {
  List<int> animationIds;
  dynamic extra;

  /// The list of saved animations was updated. 
  /// [animationIds] The new list of file identifiers of saved animations
  UpdateSavedAnimations({this.animationIds});

  /// Parse from a json
  UpdateSavedAnimations.fromJson(Map<String, dynamic> json)  {
    this.animationIds = List<int>.from((json['animation_ids'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation_ids": this.animationIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateSavedAnimations';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSelectedBackground extends Update {
  bool forDarkTheme;
  Background background;
  dynamic extra;

  /// The selected background has changed. 
  /// [forDarkTheme] True, if background for dark theme has changed . 
  /// [background] The new selected background; may be null
  UpdateSelectedBackground({this.forDarkTheme,
    this.background});

  /// Parse from a json
  UpdateSelectedBackground.fromJson(Map<String, dynamic> json)  {
    this.forDarkTheme = json['for_dark_theme'];
    this.background = Background.fromJson(json['background'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "for_dark_theme": this.forDarkTheme,
      "background": this.background == null ? null : this.background.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateSelectedBackground';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateLanguagePackStrings extends Update {
  String localizationTarget;
  String languagePackId;
  List<LanguagePackString> strings;
  dynamic extra;

  /// Some language pack strings have been updated. 
  /// [localizationTarget] Localization target to which the language pack belongs . 
  /// [languagePackId] Identifier of the updated language pack . 
  /// [strings] List of changed language pack strings
  UpdateLanguagePackStrings({this.localizationTarget,
    this.languagePackId,
    this.strings});

  /// Parse from a json
  UpdateLanguagePackStrings.fromJson(Map<String, dynamic> json)  {
    this.localizationTarget = json['localization_target'];
    this.languagePackId = json['language_pack_id'];
    this.strings = List<LanguagePackString>.from((json['strings'] ?? []).map((item) => LanguagePackString.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "localization_target": this.localizationTarget,
      "language_pack_id": this.languagePackId,
      "strings": this.strings.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateLanguagePackStrings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateConnectionState extends Update {
  ConnectionState state;
  dynamic extra;

  /// The connection state has changed. 
  /// [state] The new connection state
  UpdateConnectionState({this.state});

  /// Parse from a json
  UpdateConnectionState.fromJson(Map<String, dynamic> json)  {
    this.state = ConnectionState.fromJson(json['state'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "state": this.state == null ? null : this.state.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateConnectionState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateTermsOfService extends Update {
  String termsOfServiceId;
  TermsOfService termsOfService;
  dynamic extra;

  /// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method should be called with the reason "Decline ToS update". 
  /// [termsOfServiceId] Identifier of the terms of service . 
  /// [termsOfService] The new terms of service
  UpdateTermsOfService({this.termsOfServiceId,
    this.termsOfService});

  /// Parse from a json
  UpdateTermsOfService.fromJson(Map<String, dynamic> json)  {
    this.termsOfServiceId = json['terms_of_service_id'];
    this.termsOfService = TermsOfService.fromJson(json['terms_of_service'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "terms_of_service_id": this.termsOfServiceId,
      "terms_of_service": this.termsOfService == null ? null : this.termsOfService.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateTermsOfService';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateUsersNearby extends Update {
  List<ChatNearby> usersNearby;
  dynamic extra;

  /// The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request. 
  /// [usersNearby] The new list of users nearby
  UpdateUsersNearby({this.usersNearby});

  /// Parse from a json
  UpdateUsersNearby.fromJson(Map<String, dynamic> json)  {
    this.usersNearby = List<ChatNearby>.from((json['users_nearby'] ?? []).map((item) => ChatNearby.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "users_nearby": this.usersNearby.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateUsersNearby';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateDiceEmojis extends Update {
  List<String> emojis;
  dynamic extra;

  /// The list of supported dice emojis has changed. 
  /// [emojis] The new list of supported dice emojis
  UpdateDiceEmojis({this.emojis});

  /// Parse from a json
  UpdateDiceEmojis.fromJson(Map<String, dynamic> json)  {
    this.emojis = List<String>.from((json['emojis'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "emojis": this.emojis.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateDiceEmojis';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateAnimationSearchParameters extends Update {
  String provider;
  List<String> emojis;
  dynamic extra;

  /// The parameters of animation search through GetOption("animation_search_bot_username") bot has changed. 
  /// [provider] Name of the animation search provider . 
  /// [emojis] The new list of emojis suggested for searching
  UpdateAnimationSearchParameters({this.provider,
    this.emojis});

  /// Parse from a json
  UpdateAnimationSearchParameters.fromJson(Map<String, dynamic> json)  {
    this.provider = json['provider'];
    this.emojis = List<String>.from((json['emojis'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "provider": this.provider,
      "emojis": this.emojis.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateAnimationSearchParameters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateSuggestedActions extends Update {
  List<SuggestedAction> addedActions;
  List<SuggestedAction> removedActions;
  dynamic extra;

  /// The list of suggested to the user actions has changed. 
  /// [addedActions] Added suggested actions . 
  /// [removedActions] Removed suggested actions
  UpdateSuggestedActions({this.addedActions,
    this.removedActions});

  /// Parse from a json
  UpdateSuggestedActions.fromJson(Map<String, dynamic> json)  {
    this.addedActions = List<SuggestedAction>.from((json['added_actions'] ?? []).map((item) => SuggestedAction.fromJson(item ?? <String, dynamic>{})).toList());
    this.removedActions = List<SuggestedAction>.from((json['removed_actions'] ?? []).map((item) => SuggestedAction.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "added_actions": this.addedActions.map((i) => i.toJson()).toList(),
      "removed_actions": this.removedActions.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'updateSuggestedActions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewInlineQuery extends Update {
  int id;
  int senderUserId;
  Location userLocation;
  String query;
  String offset;
  dynamic extra;

  /// A new incoming inline query; for bots only. 
  /// [id] Unique query identifier . 
  /// [senderUserId] Identifier of the user who sent the query . 
  /// [userLocation] User location; may be null. 
  /// [query] Text of the query. 
  /// [offset] Offset of the first entry to return
  UpdateNewInlineQuery({this.id,
    this.senderUserId,
    this.userLocation,
    this.query,
    this.offset});

  /// Parse from a json
  UpdateNewInlineQuery.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.senderUserId = json['sender_user_id'];
    this.userLocation = Location.fromJson(json['user_location'] ?? <String, dynamic>{});
    this.query = json['query'];
    this.offset = json['offset'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "sender_user_id": this.senderUserId,
      "user_location": this.userLocation == null ? null : this.userLocation.toJson(),
      "query": this.query,
      "offset": this.offset,
    };
  }

  static const CONSTRUCTOR = 'updateNewInlineQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewChosenInlineResult extends Update {
  int senderUserId;
  Location userLocation;
  String query;
  String resultId;
  String inlineMessageId;
  dynamic extra;

  /// The user has chosen a result of an inline query; for bots only. 
  /// [senderUserId] Identifier of the user who sent the query . 
  /// [userLocation] User location; may be null. 
  /// [query] Text of the query. 
  /// [resultId] Identifier of the chosen result . 
  /// [inlineMessageId] Identifier of the sent inline message, if known
  UpdateNewChosenInlineResult({this.senderUserId,
    this.userLocation,
    this.query,
    this.resultId,
    this.inlineMessageId});

  /// Parse from a json
  UpdateNewChosenInlineResult.fromJson(Map<String, dynamic> json)  {
    this.senderUserId = json['sender_user_id'];
    this.userLocation = Location.fromJson(json['user_location'] ?? <String, dynamic>{});
    this.query = json['query'];
    this.resultId = json['result_id'];
    this.inlineMessageId = json['inline_message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sender_user_id": this.senderUserId,
      "user_location": this.userLocation == null ? null : this.userLocation.toJson(),
      "query": this.query,
      "result_id": this.resultId,
      "inline_message_id": this.inlineMessageId,
    };
  }

  static const CONSTRUCTOR = 'updateNewChosenInlineResult';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewCallbackQuery extends Update {
  int id;
  int senderUserId;
  int chatId;
  int messageId;
  int chatInstance;
  CallbackQueryPayload payload;
  dynamic extra;

  /// A new incoming callback query; for bots only. 
  /// [id] Unique query identifier . 
  /// [senderUserId] Identifier of the user who sent the query. 
  /// [chatId] Identifier of the chat where the query was sent. 
  /// [messageId] Identifier of the message, from which the query originated. 
  /// [chatInstance] Identifier that uniquely corresponds to the chat to which the message was sent. 
  /// [payload] Query payload
  UpdateNewCallbackQuery({this.id,
    this.senderUserId,
    this.chatId,
    this.messageId,
    this.chatInstance,
    this.payload});

  /// Parse from a json
  UpdateNewCallbackQuery.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.senderUserId = json['sender_user_id'];
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.chatInstance = json['chat_instance'];
    this.payload = CallbackQueryPayload.fromJson(json['payload'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "sender_user_id": this.senderUserId,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "chat_instance": this.chatInstance,
      "payload": this.payload == null ? null : this.payload.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateNewCallbackQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewInlineCallbackQuery extends Update {
  int id;
  int senderUserId;
  String inlineMessageId;
  int chatInstance;
  CallbackQueryPayload payload;
  dynamic extra;

  /// A new incoming callback query from a message sent via a bot; for bots only. 
  /// [id] Unique query identifier . 
  /// [senderUserId] Identifier of the user who sent the query . 
  /// [inlineMessageId] Identifier of the inline message, from which the query originated. 
  /// [chatInstance] An identifier uniquely corresponding to the chat a message was sent to. 
  /// [payload] Query payload
  UpdateNewInlineCallbackQuery({this.id,
    this.senderUserId,
    this.inlineMessageId,
    this.chatInstance,
    this.payload});

  /// Parse from a json
  UpdateNewInlineCallbackQuery.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.senderUserId = json['sender_user_id'];
    this.inlineMessageId = json['inline_message_id'];
    this.chatInstance = json['chat_instance'];
    this.payload = CallbackQueryPayload.fromJson(json['payload'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "sender_user_id": this.senderUserId,
      "inline_message_id": this.inlineMessageId,
      "chat_instance": this.chatInstance,
      "payload": this.payload == null ? null : this.payload.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateNewInlineCallbackQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewShippingQuery extends Update {
  int id;
  int senderUserId;
  String invoicePayload;
  Address shippingAddress;
  dynamic extra;

  /// A new incoming shipping query; for bots only. Only for invoices with flexible price. 
  /// [id] Unique query identifier . 
  /// [senderUserId] Identifier of the user who sent the query . 
  /// [invoicePayload] Invoice payload . 
  /// [shippingAddress] User shipping address
  UpdateNewShippingQuery({this.id,
    this.senderUserId,
    this.invoicePayload,
    this.shippingAddress});

  /// Parse from a json
  UpdateNewShippingQuery.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.senderUserId = json['sender_user_id'];
    this.invoicePayload = json['invoice_payload'];
    this.shippingAddress = Address.fromJson(json['shipping_address'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "sender_user_id": this.senderUserId,
      "invoice_payload": this.invoicePayload,
      "shipping_address": this.shippingAddress == null ? null : this.shippingAddress.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateNewShippingQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewPreCheckoutQuery extends Update {
  int id;
  int senderUserId;
  String currency;
  int totalAmount;
  String invoicePayload;
  String shippingOptionId;
  OrderInfo orderInfo;
  dynamic extra;

  /// A new incoming pre-checkout query; for bots only. Contains full information about a checkout. 
  /// [id] Unique query identifier . 
  /// [senderUserId] Identifier of the user who sent the query . 
  /// [currency] Currency for the product price . 
  /// [totalAmount] Total price for the product, in the minimal quantity of the currency. 
  /// [invoicePayload] Invoice payload. 
  /// [shippingOptionId] Identifier of a shipping option chosen by the user; may be empty if not applicable . 
  /// [orderInfo] Information about the order; may be null
  UpdateNewPreCheckoutQuery({this.id,
    this.senderUserId,
    this.currency,
    this.totalAmount,
    this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo});

  /// Parse from a json
  UpdateNewPreCheckoutQuery.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.senderUserId = json['sender_user_id'];
    this.currency = json['currency'];
    this.totalAmount = json['total_amount'];
    this.invoicePayload = json['invoice_payload'];
    this.shippingOptionId = json['shipping_option_id'];
    this.orderInfo = OrderInfo.fromJson(json['order_info'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "sender_user_id": this.senderUserId,
      "currency": this.currency,
      "total_amount": this.totalAmount,
      "invoice_payload": this.invoicePayload,
      "shipping_option_id": this.shippingOptionId,
      "order_info": this.orderInfo == null ? null : this.orderInfo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updateNewPreCheckoutQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewCustomEvent extends Update {
  String event;
  dynamic extra;

  /// A new incoming event; for bots only. 
  /// [event] A JSON-serialized event
  UpdateNewCustomEvent({this.event});

  /// Parse from a json
  UpdateNewCustomEvent.fromJson(Map<String, dynamic> json)  {
    this.event = json['event'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "event": this.event,
    };
  }

  static const CONSTRUCTOR = 'updateNewCustomEvent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdateNewCustomQuery extends Update {
  int id;
  String data;
  int timeout;
  dynamic extra;

  /// A new incoming query; for bots only. 
  /// [id] The query identifier . 
  /// [data] JSON-serialized query data . 
  /// [timeout] Query timeout
  UpdateNewCustomQuery({this.id,
    this.data,
    this.timeout});

  /// Parse from a json
  UpdateNewCustomQuery.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.data = json['data'];
    this.timeout = json['timeout'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "data": this.data,
      "timeout": this.timeout,
    };
  }

  static const CONSTRUCTOR = 'updateNewCustomQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdatePoll extends Update {
  Poll poll;
  dynamic extra;

  /// A poll was updated; for bots only. 
  /// [poll] New data about the poll
  UpdatePoll({this.poll});

  /// Parse from a json
  UpdatePoll.fromJson(Map<String, dynamic> json)  {
    this.poll = Poll.fromJson(json['poll'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "poll": this.poll == null ? null : this.poll.toJson(),
    };
  }

  static const CONSTRUCTOR = 'updatePoll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class UpdatePollAnswer extends Update {
  int pollId;
  int userId;
  List<int> optionIds;
  dynamic extra;

  /// A user changed the answer to a poll; for bots only. 
  /// [pollId] Unique poll identifier . 
  /// [userId] The user, who changed the answer to the poll . 
  /// [optionIds] 0-based identifiers of answer options, chosen by the user
  UpdatePollAnswer({this.pollId,
    this.userId,
    this.optionIds});

  /// Parse from a json
  UpdatePollAnswer.fromJson(Map<String, dynamic> json)  {
    this.pollId = json['poll_id'];
    this.userId = json['user_id'];
    this.optionIds = List<int>.from((json['option_ids'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "poll_id": this.pollId,
      "user_id": this.userId,
      "option_ids": this.optionIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'updatePollAnswer';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}