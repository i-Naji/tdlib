part of '../tdapi.dart';

class Update extends TdObject {

  /// Contains notifications about data changes
  const Update();
  
  /// a Update return type can be :
  /// * [UpdateAuthorizationState]
  /// * [UpdateNewMessage]
  /// * [UpdateMessageSendAcknowledged]
  /// * [UpdateMessageSendSucceeded]
  /// * [UpdateMessageSendFailed]
  /// * [UpdateMessageContent]
  /// * [UpdateMessageEdited]
  /// * [UpdateMessageIsPinned]
  /// * [UpdateMessageInteractionInfo]
  /// * [UpdateMessageContentOpened]
  /// * [UpdateMessageMentionRead]
  /// * [UpdateMessageLiveLocationViewed]
  /// * [UpdateNewChat]
  /// * [UpdateChatTitle]
  /// * [UpdateChatPhoto]
  /// * [UpdateChatPermissions]
  /// * [UpdateChatLastMessage]
  /// * [UpdateChatPosition]
  /// * [UpdateChatReadInbox]
  /// * [UpdateChatReadOutbox]
  /// * [UpdateChatActionBar]
  /// * [UpdateChatDraftMessage]
  /// * [UpdateChatMessageSender]
  /// * [UpdateChatMessageTtl]
  /// * [UpdateChatNotificationSettings]
  /// * [UpdateChatPendingJoinRequests]
  /// * [UpdateChatReplyMarkup]
  /// * [UpdateChatTheme]
  /// * [UpdateChatUnreadMentionCount]
  /// * [UpdateChatVideoChat]
  /// * [UpdateChatDefaultDisableNotification]
  /// * [UpdateChatHasProtectedContent]
  /// * [UpdateChatHasScheduledMessages]
  /// * [UpdateChatIsBlocked]
  /// * [UpdateChatIsMarkedAsUnread]
  /// * [UpdateChatFilters]
  /// * [UpdateChatOnlineMemberCount]
  /// * [UpdateScopeNotificationSettings]
  /// * [UpdateNotification]
  /// * [UpdateNotificationGroup]
  /// * [UpdateActiveNotifications]
  /// * [UpdateHavePendingNotifications]
  /// * [UpdateDeleteMessages]
  /// * [UpdateChatAction]
  /// * [UpdateUserStatus]
  /// * [UpdateUser]
  /// * [UpdateBasicGroup]
  /// * [UpdateSupergroup]
  /// * [UpdateSecretChat]
  /// * [UpdateUserFullInfo]
  /// * [UpdateBasicGroupFullInfo]
  /// * [UpdateSupergroupFullInfo]
  /// * [UpdateServiceNotification]
  /// * [UpdateFile]
  /// * [UpdateFileGenerationStart]
  /// * [UpdateFileGenerationStop]
  /// * [UpdateCall]
  /// * [UpdateGroupCall]
  /// * [UpdateGroupCallParticipant]
  /// * [UpdateNewCallSignalingData]
  /// * [UpdateUserPrivacySettingRules]
  /// * [UpdateUnreadMessageCount]
  /// * [UpdateUnreadChatCount]
  /// * [UpdateOption]
  /// * [UpdateStickerSet]
  /// * [UpdateInstalledStickerSets]
  /// * [UpdateTrendingStickerSets]
  /// * [UpdateRecentStickers]
  /// * [UpdateFavoriteStickers]
  /// * [UpdateSavedAnimations]
  /// * [UpdateSelectedBackground]
  /// * [UpdateChatThemes]
  /// * [UpdateLanguagePackStrings]
  /// * [UpdateConnectionState]
  /// * [UpdateTermsOfService]
  /// * [UpdateUsersNearby]
  /// * [UpdateDiceEmojis]
  /// * [UpdateAnimatedEmojiMessageClicked]
  /// * [UpdateAnimationSearchParameters]
  /// * [UpdateSuggestedActions]
  /// * [UpdateNewInlineQuery]
  /// * [UpdateNewChosenInlineResult]
  /// * [UpdateNewCallbackQuery]
  /// * [UpdateNewInlineCallbackQuery]
  /// * [UpdateNewShippingQuery]
  /// * [UpdateNewPreCheckoutQuery]
  /// * [UpdateNewCustomEvent]
  /// * [UpdateNewCustomQuery]
  /// * [UpdatePoll]
  /// * [UpdatePollAnswer]
  /// * [UpdateChatMember]
  /// * [UpdateNewChatJoinRequest]
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
      case UpdateMessageIsPinned.CONSTRUCTOR:
        return UpdateMessageIsPinned.fromJson(json);
      case UpdateMessageInteractionInfo.CONSTRUCTOR:
        return UpdateMessageInteractionInfo.fromJson(json);
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
      case UpdateChatReadInbox.CONSTRUCTOR:
        return UpdateChatReadInbox.fromJson(json);
      case UpdateChatReadOutbox.CONSTRUCTOR:
        return UpdateChatReadOutbox.fromJson(json);
      case UpdateChatActionBar.CONSTRUCTOR:
        return UpdateChatActionBar.fromJson(json);
      case UpdateChatDraftMessage.CONSTRUCTOR:
        return UpdateChatDraftMessage.fromJson(json);
      case UpdateChatMessageSender.CONSTRUCTOR:
        return UpdateChatMessageSender.fromJson(json);
      case UpdateChatMessageTtl.CONSTRUCTOR:
        return UpdateChatMessageTtl.fromJson(json);
      case UpdateChatNotificationSettings.CONSTRUCTOR:
        return UpdateChatNotificationSettings.fromJson(json);
      case UpdateChatPendingJoinRequests.CONSTRUCTOR:
        return UpdateChatPendingJoinRequests.fromJson(json);
      case UpdateChatReplyMarkup.CONSTRUCTOR:
        return UpdateChatReplyMarkup.fromJson(json);
      case UpdateChatTheme.CONSTRUCTOR:
        return UpdateChatTheme.fromJson(json);
      case UpdateChatUnreadMentionCount.CONSTRUCTOR:
        return UpdateChatUnreadMentionCount.fromJson(json);
      case UpdateChatVideoChat.CONSTRUCTOR:
        return UpdateChatVideoChat.fromJson(json);
      case UpdateChatDefaultDisableNotification.CONSTRUCTOR:
        return UpdateChatDefaultDisableNotification.fromJson(json);
      case UpdateChatHasProtectedContent.CONSTRUCTOR:
        return UpdateChatHasProtectedContent.fromJson(json);
      case UpdateChatHasScheduledMessages.CONSTRUCTOR:
        return UpdateChatHasScheduledMessages.fromJson(json);
      case UpdateChatIsBlocked.CONSTRUCTOR:
        return UpdateChatIsBlocked.fromJson(json);
      case UpdateChatIsMarkedAsUnread.CONSTRUCTOR:
        return UpdateChatIsMarkedAsUnread.fromJson(json);
      case UpdateChatFilters.CONSTRUCTOR:
        return UpdateChatFilters.fromJson(json);
      case UpdateChatOnlineMemberCount.CONSTRUCTOR:
        return UpdateChatOnlineMemberCount.fromJson(json);
      case UpdateScopeNotificationSettings.CONSTRUCTOR:
        return UpdateScopeNotificationSettings.fromJson(json);
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
      case UpdateChatAction.CONSTRUCTOR:
        return UpdateChatAction.fromJson(json);
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
      case UpdateGroupCall.CONSTRUCTOR:
        return UpdateGroupCall.fromJson(json);
      case UpdateGroupCallParticipant.CONSTRUCTOR:
        return UpdateGroupCallParticipant.fromJson(json);
      case UpdateNewCallSignalingData.CONSTRUCTOR:
        return UpdateNewCallSignalingData.fromJson(json);
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
      case UpdateChatThemes.CONSTRUCTOR:
        return UpdateChatThemes.fromJson(json);
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
      case UpdateAnimatedEmojiMessageClicked.CONSTRUCTOR:
        return UpdateAnimatedEmojiMessageClicked.fromJson(json);
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
      case UpdateChatMember.CONSTRUCTOR:
        return UpdateChatMember.fromJson(json);
      case UpdateNewChatJoinRequest.CONSTRUCTOR:
        return UpdateNewChatJoinRequest.fromJson(json);
      default:
        return const Update();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  Update copyWith() => const Update();

  static const CONSTRUCTOR = 'update';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateAuthorizationState extends Update {

  /// The user authorization state has changed
  const UpdateAuthorizationState({
    required this.authorizationState,
    this.extra,
    this.clientId,
  });
  
  /// [authorizationState] New authorization state
  final AuthorizationState authorizationState;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateAuthorizationState.fromJson(Map<String, dynamic> json) => UpdateAuthorizationState(
    authorizationState: AuthorizationState.fromJson(json['authorization_state']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "authorization_state": authorizationState.toJson(),
    };
  }
  
  @override
  UpdateAuthorizationState copyWith({
    AuthorizationState? authorizationState,
    dynamic extra,
    int? clientId,
  }) => UpdateAuthorizationState(
    authorizationState: authorizationState ?? this.authorizationState,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateAuthorizationState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateNewMessage extends Update {

  /// A new message was received; can also be an outgoing message
  const UpdateNewMessage({
    required this.message,
    this.extra,
    this.clientId,
  });
  
  /// [message] The new message
  final Message message;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewMessage.fromJson(Map<String, dynamic> json) => UpdateNewMessage(
    message: Message.fromJson(json['message']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
    };
  }
  
  @override
  UpdateNewMessage copyWith({
    Message? message,
    dynamic extra,
    int? clientId,
  }) => UpdateNewMessage(
    message: message ?? this.message,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateNewMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateMessageSendAcknowledged extends Update {

  /// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully or even that the send message request will be processed. This update will be sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message
  const UpdateMessageSendAcknowledged({
    required this.chatId,
    required this.messageId,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] The chat identifier of the sent message
  final int chatId;

  /// [messageId] A temporary message identifier
  final int messageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageSendAcknowledged.fromJson(Map<String, dynamic> json) => UpdateMessageSendAcknowledged(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }
  
  @override
  UpdateMessageSendAcknowledged copyWith({
    int? chatId,
    int? messageId,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageSendAcknowledged(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateMessageSendAcknowledged';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateMessageSendSucceeded extends Update {

  /// A message has been successfully sent
  const UpdateMessageSendSucceeded({
    required this.message,
    required this.oldMessageId,
    this.extra,
    this.clientId,
  });
  
  /// [message] The sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change 
  final Message message;

  /// [oldMessageId] The previous temporary message identifier
  final int oldMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageSendSucceeded.fromJson(Map<String, dynamic> json) => UpdateMessageSendSucceeded(
    message: Message.fromJson(json['message']),
    oldMessageId: json['old_message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
      "old_message_id": oldMessageId,
    };
  }
  
  @override
  UpdateMessageSendSucceeded copyWith({
    Message? message,
    int? oldMessageId,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageSendSucceeded(
    message: message ?? this.message,
    oldMessageId: oldMessageId ?? this.oldMessageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateMessageSendSucceeded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateMessageSendFailed extends Update {

  /// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update
  const UpdateMessageSendFailed({
    required this.message,
    required this.oldMessageId,
    required this.errorCode,
    required this.errorMessage,
    this.extra,
    this.clientId,
  });
  
  /// [message] The failed to send message
  final Message message;

  /// [oldMessageId] The previous temporary message identifier 
  final int oldMessageId;

  /// [errorCode] An error code 
  final int errorCode;

  /// [errorMessage] Error message
  final String errorMessage;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageSendFailed.fromJson(Map<String, dynamic> json) => UpdateMessageSendFailed(
    message: Message.fromJson(json['message']),
    oldMessageId: json['old_message_id'],
    errorCode: json['error_code'],
    errorMessage: json['error_message'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
      "old_message_id": oldMessageId,
      "error_code": errorCode,
      "error_message": errorMessage,
    };
  }
  
  @override
  UpdateMessageSendFailed copyWith({
    Message? message,
    int? oldMessageId,
    int? errorCode,
    String? errorMessage,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageSendFailed(
    message: message ?? this.message,
    oldMessageId: oldMessageId ?? this.oldMessageId,
    errorCode: errorCode ?? this.errorCode,
    errorMessage: errorMessage ?? this.errorMessage,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateMessageSendFailed';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateMessageContent extends Update {

  /// The message content has changed
  const UpdateMessageContent({
    required this.chatId,
    required this.messageId,
    required this.newContent,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageId] Message identifier 
  final int messageId;

  /// [newContent] New message content
  final MessageContent newContent;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageContent.fromJson(Map<String, dynamic> json) => UpdateMessageContent(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    newContent: MessageContent.fromJson(json['new_content']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "new_content": newContent.toJson(),
    };
  }
  
  @override
  UpdateMessageContent copyWith({
    int? chatId,
    int? messageId,
    MessageContent? newContent,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageContent(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    newContent: newContent ?? this.newContent,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateMessageContent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateMessageEdited extends Update {

  /// A message was edited. Changes in the message content will come in a separate updateMessageContent
  const UpdateMessageEdited({
    required this.chatId,
    required this.messageId,
    required this.editDate,
    this.replyMarkup,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageId] Message identifier 
  final int messageId;

  /// [editDate] Point in time (Unix timestamp) when the message was edited 
  final int editDate;

  /// [replyMarkup] New message reply markup; may be null
  final ReplyMarkup? replyMarkup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageEdited.fromJson(Map<String, dynamic> json) => UpdateMessageEdited(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    editDate: json['edit_date'],
    replyMarkup: json['reply_markup'] == null ? null : ReplyMarkup.fromJson(json['reply_markup']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "edit_date": editDate,
      "reply_markup": replyMarkup?.toJson(),
    };
  }
  
  @override
  UpdateMessageEdited copyWith({
    int? chatId,
    int? messageId,
    int? editDate,
    ReplyMarkup? replyMarkup,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageEdited(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    editDate: editDate ?? this.editDate,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateMessageEdited';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateMessageIsPinned extends Update {

  /// The message pinned state was changed
  const UpdateMessageIsPinned({
    required this.chatId,
    required this.messageId,
    required this.isPinned,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageId] The message identifier 
  final int messageId;

  /// [isPinned] True, if the message is pinned
  final bool isPinned;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageIsPinned.fromJson(Map<String, dynamic> json) => UpdateMessageIsPinned(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    isPinned: json['is_pinned'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "is_pinned": isPinned,
    };
  }
  
  @override
  UpdateMessageIsPinned copyWith({
    int? chatId,
    int? messageId,
    bool? isPinned,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageIsPinned(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    isPinned: isPinned ?? this.isPinned,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateMessageIsPinned';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateMessageInteractionInfo extends Update {

  /// The information about interactions with a message has changed
  const UpdateMessageInteractionInfo({
    required this.chatId,
    required this.messageId,
    this.interactionInfo,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageId] Message identifier 
  final int messageId;

  /// [interactionInfo] New information about interactions with the message; may be null
  final MessageInteractionInfo? interactionInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageInteractionInfo.fromJson(Map<String, dynamic> json) => UpdateMessageInteractionInfo(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    interactionInfo: json['interaction_info'] == null ? null : MessageInteractionInfo.fromJson(json['interaction_info']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "interaction_info": interactionInfo?.toJson(),
    };
  }
  
  @override
  UpdateMessageInteractionInfo copyWith({
    int? chatId,
    int? messageId,
    MessageInteractionInfo? interactionInfo,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageInteractionInfo(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    interactionInfo: interactionInfo ?? this.interactionInfo,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateMessageInteractionInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateMessageContentOpened extends Update {

  /// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the TTL timer for self-destructing messages
  const UpdateMessageContentOpened({
    required this.chatId,
    required this.messageId,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageContentOpened.fromJson(Map<String, dynamic> json) => UpdateMessageContentOpened(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }
  
  @override
  UpdateMessageContentOpened copyWith({
    int? chatId,
    int? messageId,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageContentOpened(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateMessageContentOpened';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateMessageMentionRead extends Update {

  /// A message with an unread mention was read
  const UpdateMessageMentionRead({
    required this.chatId,
    required this.messageId,
    required this.unreadMentionCount,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageId] Message identifier 
  final int messageId;

  /// [unreadMentionCount] The new number of unread mention messages left in the chat
  final int unreadMentionCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageMentionRead.fromJson(Map<String, dynamic> json) => UpdateMessageMentionRead(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    unreadMentionCount: json['unread_mention_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "unread_mention_count": unreadMentionCount,
    };
  }
  
  @override
  UpdateMessageMentionRead copyWith({
    int? chatId,
    int? messageId,
    int? unreadMentionCount,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageMentionRead(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateMessageMentionRead';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateMessageLiveLocationViewed extends Update {

  /// A message with a live location was viewed. When the update is received, the application is supposed to update the live location
  const UpdateMessageLiveLocationViewed({
    required this.chatId,
    required this.messageId,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Identifier of the chat with the live location message
  final int chatId;

  /// [messageId] Identifier of the message with live location
  final int messageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateMessageLiveLocationViewed.fromJson(Map<String, dynamic> json) => UpdateMessageLiveLocationViewed(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }
  
  @override
  UpdateMessageLiveLocationViewed copyWith({
    int? chatId,
    int? messageId,
    dynamic extra,
    int? clientId,
  }) => UpdateMessageLiveLocationViewed(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateMessageLiveLocationViewed';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateNewChat extends Update {

  /// A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates
  const UpdateNewChat({
    required this.chat,
    this.extra,
    this.clientId,
  });
  
  /// [chat] The chat
  final Chat chat;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewChat.fromJson(Map<String, dynamic> json) => UpdateNewChat(
    chat: Chat.fromJson(json['chat']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat": chat.toJson(),
    };
  }
  
  @override
  UpdateNewChat copyWith({
    Chat? chat,
    dynamic extra,
    int? clientId,
  }) => UpdateNewChat(
    chat: chat ?? this.chat,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateNewChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatTitle extends Update {

  /// The title of a chat was changed
  const UpdateChatTitle({
    required this.chatId,
    required this.title,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [title] The new chat title
  final String title;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatTitle.fromJson(Map<String, dynamic> json) => UpdateChatTitle(
    chatId: json['chat_id'],
    title: json['title'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "title": title,
    };
  }
  
  @override
  UpdateChatTitle copyWith({
    int? chatId,
    String? title,
    dynamic extra,
    int? clientId,
  }) => UpdateChatTitle(
    chatId: chatId ?? this.chatId,
    title: title ?? this.title,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatTitle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatPhoto extends Update {

  /// A chat photo was changed
  const UpdateChatPhoto({
    required this.chatId,
    this.photo,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [photo] The new chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatPhoto.fromJson(Map<String, dynamic> json) => UpdateChatPhoto(
    chatId: json['chat_id'],
    photo: json['photo'] == null ? null : ChatPhotoInfo.fromJson(json['photo']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "photo": photo?.toJson(),
    };
  }
  
  @override
  UpdateChatPhoto copyWith({
    int? chatId,
    ChatPhotoInfo? photo,
    dynamic extra,
    int? clientId,
  }) => UpdateChatPhoto(
    chatId: chatId ?? this.chatId,
    photo: photo ?? this.photo,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatPermissions extends Update {

  /// Chat permissions was changed
  const UpdateChatPermissions({
    required this.chatId,
    required this.permissions,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [permissions] The new chat permissions
  final ChatPermissions permissions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatPermissions.fromJson(Map<String, dynamic> json) => UpdateChatPermissions(
    chatId: json['chat_id'],
    permissions: ChatPermissions.fromJson(json['permissions']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "permissions": permissions.toJson(),
    };
  }
  
  @override
  UpdateChatPermissions copyWith({
    int? chatId,
    ChatPermissions? permissions,
    dynamic extra,
    int? clientId,
  }) => UpdateChatPermissions(
    chatId: chatId ?? this.chatId,
    permissions: permissions ?? this.permissions,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatPermissions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatLastMessage extends Update {

  /// The last message of a chat was changed. If last_message is null, then the last message in the chat became unknown. Some new unknown messages might be added to the chat in this case
  const UpdateChatLastMessage({
    required this.chatId,
    this.lastMessage,
    required this.positions,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [lastMessage] The new last message in the chat; may be null 
  final Message? lastMessage;

  /// [positions] The new chat positions in the chat lists
  final List<ChatPosition> positions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatLastMessage.fromJson(Map<String, dynamic> json) => UpdateChatLastMessage(
    chatId: json['chat_id'],
    lastMessage: json['last_message'] == null ? null : Message.fromJson(json['last_message']),
    positions: List<ChatPosition>.from((json['positions'] ?? []).map((item) => ChatPosition.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "last_message": lastMessage?.toJson(),
      "positions": positions.map((i) => i.toJson()).toList(),
    };
  }
  
  @override
  UpdateChatLastMessage copyWith({
    int? chatId,
    Message? lastMessage,
    List<ChatPosition>? positions,
    dynamic extra,
    int? clientId,
  }) => UpdateChatLastMessage(
    chatId: chatId ?? this.chatId,
    lastMessage: lastMessage ?? this.lastMessage,
    positions: positions ?? this.positions,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatLastMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatPosition extends Update {

  /// The position of a chat in a chat list has changed. Instead of this update updateChatLastMessage or updateChatDraftMessage might be sent
  const UpdateChatPosition({
    required this.chatId,
    required this.position,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [position] New chat position. If new order is 0, then the chat needs to be removed from the list
  final ChatPosition position;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatPosition.fromJson(Map<String, dynamic> json) => UpdateChatPosition(
    chatId: json['chat_id'],
    position: ChatPosition.fromJson(json['position']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "position": position.toJson(),
    };
  }
  
  @override
  UpdateChatPosition copyWith({
    int? chatId,
    ChatPosition? position,
    dynamic extra,
    int? clientId,
  }) => UpdateChatPosition(
    chatId: chatId ?? this.chatId,
    position: position ?? this.position,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatPosition';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatReadInbox extends Update {

  /// Incoming messages were read or the number of unread messages has been changed
  const UpdateChatReadInbox({
    required this.chatId,
    required this.lastReadInboxMessageId,
    required this.unreadCount,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message 
  final int lastReadInboxMessageId;

  /// [unreadCount] The number of unread messages left in the chat
  final int unreadCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatReadInbox.fromJson(Map<String, dynamic> json) => UpdateChatReadInbox(
    chatId: json['chat_id'],
    lastReadInboxMessageId: json['last_read_inbox_message_id'],
    unreadCount: json['unread_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "last_read_inbox_message_id": lastReadInboxMessageId,
      "unread_count": unreadCount,
    };
  }
  
  @override
  UpdateChatReadInbox copyWith({
    int? chatId,
    int? lastReadInboxMessageId,
    int? unreadCount,
    dynamic extra,
    int? clientId,
  }) => UpdateChatReadInbox(
    chatId: chatId ?? this.chatId,
    lastReadInboxMessageId: lastReadInboxMessageId ?? this.lastReadInboxMessageId,
    unreadCount: unreadCount ?? this.unreadCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatReadInbox';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatReadOutbox extends Update {

  /// Outgoing messages were read
  const UpdateChatReadOutbox({
    required this.chatId,
    required this.lastReadOutboxMessageId,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [lastReadOutboxMessageId] Identifier of last read outgoing message
  final int lastReadOutboxMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatReadOutbox.fromJson(Map<String, dynamic> json) => UpdateChatReadOutbox(
    chatId: json['chat_id'],
    lastReadOutboxMessageId: json['last_read_outbox_message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "last_read_outbox_message_id": lastReadOutboxMessageId,
    };
  }
  
  @override
  UpdateChatReadOutbox copyWith({
    int? chatId,
    int? lastReadOutboxMessageId,
    dynamic extra,
    int? clientId,
  }) => UpdateChatReadOutbox(
    chatId: chatId ?? this.chatId,
    lastReadOutboxMessageId: lastReadOutboxMessageId ?? this.lastReadOutboxMessageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatReadOutbox';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatActionBar extends Update {

  /// The chat action bar was changed
  const UpdateChatActionBar({
    required this.chatId,
    this.actionBar,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [actionBar] The new value of the action bar; may be null
  final ChatActionBar? actionBar;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatActionBar.fromJson(Map<String, dynamic> json) => UpdateChatActionBar(
    chatId: json['chat_id'],
    actionBar: json['action_bar'] == null ? null : ChatActionBar.fromJson(json['action_bar']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "action_bar": actionBar?.toJson(),
    };
  }
  
  @override
  UpdateChatActionBar copyWith({
    int? chatId,
    ChatActionBar? actionBar,
    dynamic extra,
    int? clientId,
  }) => UpdateChatActionBar(
    chatId: chatId ?? this.chatId,
    actionBar: actionBar ?? this.actionBar,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatActionBar';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatDraftMessage extends Update {

  /// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update mustn't be applied
  const UpdateChatDraftMessage({
    required this.chatId,
    this.draftMessage,
    required this.positions,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [draftMessage] The new draft message; may be null 
  final DraftMessage? draftMessage;

  /// [positions] The new chat positions in the chat lists
  final List<ChatPosition> positions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatDraftMessage.fromJson(Map<String, dynamic> json) => UpdateChatDraftMessage(
    chatId: json['chat_id'],
    draftMessage: json['draft_message'] == null ? null : DraftMessage.fromJson(json['draft_message']),
    positions: List<ChatPosition>.from((json['positions'] ?? []).map((item) => ChatPosition.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "draft_message": draftMessage?.toJson(),
      "positions": positions.map((i) => i.toJson()).toList(),
    };
  }
  
  @override
  UpdateChatDraftMessage copyWith({
    int? chatId,
    DraftMessage? draftMessage,
    List<ChatPosition>? positions,
    dynamic extra,
    int? clientId,
  }) => UpdateChatDraftMessage(
    chatId: chatId ?? this.chatId,
    draftMessage: draftMessage ?? this.draftMessage,
    positions: positions ?? this.positions,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatDraftMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatMessageSender extends Update {

  /// The message sender that is selected to send messages in a chat has changed
  const UpdateChatMessageSender({
    required this.chatId,
    this.messageSenderId,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageSenderId] New value of message_sender_id; may be null if the user can't change message sender
  final MessageSender? messageSenderId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatMessageSender.fromJson(Map<String, dynamic> json) => UpdateChatMessageSender(
    chatId: json['chat_id'],
    messageSenderId: json['message_sender_id'] == null ? null : MessageSender.fromJson(json['message_sender_id']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_sender_id": messageSenderId?.toJson(),
    };
  }
  
  @override
  UpdateChatMessageSender copyWith({
    int? chatId,
    MessageSender? messageSenderId,
    dynamic extra,
    int? clientId,
  }) => UpdateChatMessageSender(
    chatId: chatId ?? this.chatId,
    messageSenderId: messageSenderId ?? this.messageSenderId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatMessageSender';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatMessageTtl extends Update {

  /// The message Time To Live setting for a chat was changed
  const UpdateChatMessageTtl({
    required this.chatId,
    required this.messageTtl,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageTtl] New value of message_ttl
  final int messageTtl;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatMessageTtl.fromJson(Map<String, dynamic> json) => UpdateChatMessageTtl(
    chatId: json['chat_id'],
    messageTtl: json['message_ttl'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_ttl": messageTtl,
    };
  }
  
  @override
  UpdateChatMessageTtl copyWith({
    int? chatId,
    int? messageTtl,
    dynamic extra,
    int? clientId,
  }) => UpdateChatMessageTtl(
    chatId: chatId ?? this.chatId,
    messageTtl: messageTtl ?? this.messageTtl,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatMessageTtl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatNotificationSettings extends Update {

  /// Notification settings for a chat were changed
  const UpdateChatNotificationSettings({
    required this.chatId,
    required this.notificationSettings,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [notificationSettings] The new notification settings
  final ChatNotificationSettings notificationSettings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatNotificationSettings.fromJson(Map<String, dynamic> json) => UpdateChatNotificationSettings(
    chatId: json['chat_id'],
    notificationSettings: ChatNotificationSettings.fromJson(json['notification_settings']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "notification_settings": notificationSettings.toJson(),
    };
  }
  
  @override
  UpdateChatNotificationSettings copyWith({
    int? chatId,
    ChatNotificationSettings? notificationSettings,
    dynamic extra,
    int? clientId,
  }) => UpdateChatNotificationSettings(
    chatId: chatId ?? this.chatId,
    notificationSettings: notificationSettings ?? this.notificationSettings,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatNotificationSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatPendingJoinRequests extends Update {

  /// The chat pending join requests were changed
  const UpdateChatPendingJoinRequests({
    required this.chatId,
    this.pendingJoinRequests,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [pendingJoinRequests] The new data about pending join requests; may be null
  final ChatJoinRequestsInfo? pendingJoinRequests;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatPendingJoinRequests.fromJson(Map<String, dynamic> json) => UpdateChatPendingJoinRequests(
    chatId: json['chat_id'],
    pendingJoinRequests: json['pending_join_requests'] == null ? null : ChatJoinRequestsInfo.fromJson(json['pending_join_requests']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "pending_join_requests": pendingJoinRequests?.toJson(),
    };
  }
  
  @override
  UpdateChatPendingJoinRequests copyWith({
    int? chatId,
    ChatJoinRequestsInfo? pendingJoinRequests,
    dynamic extra,
    int? clientId,
  }) => UpdateChatPendingJoinRequests(
    chatId: chatId ?? this.chatId,
    pendingJoinRequests: pendingJoinRequests ?? this.pendingJoinRequests,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatPendingJoinRequests';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatReplyMarkup extends Update {

  /// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user
  const UpdateChatReplyMarkup({
    required this.chatId,
    required this.replyMarkupMessageId,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [replyMarkupMessageId] Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
  final int replyMarkupMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatReplyMarkup.fromJson(Map<String, dynamic> json) => UpdateChatReplyMarkup(
    chatId: json['chat_id'],
    replyMarkupMessageId: json['reply_markup_message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "reply_markup_message_id": replyMarkupMessageId,
    };
  }
  
  @override
  UpdateChatReplyMarkup copyWith({
    int? chatId,
    int? replyMarkupMessageId,
    dynamic extra,
    int? clientId,
  }) => UpdateChatReplyMarkup(
    chatId: chatId ?? this.chatId,
    replyMarkupMessageId: replyMarkupMessageId ?? this.replyMarkupMessageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatReplyMarkup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatTheme extends Update {

  /// The chat theme was changed
  const UpdateChatTheme({
    required this.chatId,
    required this.themeName,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [themeName] The new name of the chat theme; may be empty if theme was reset to default
  final String themeName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatTheme.fromJson(Map<String, dynamic> json) => UpdateChatTheme(
    chatId: json['chat_id'],
    themeName: json['theme_name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "theme_name": themeName,
    };
  }
  
  @override
  UpdateChatTheme copyWith({
    int? chatId,
    String? themeName,
    dynamic extra,
    int? clientId,
  }) => UpdateChatTheme(
    chatId: chatId ?? this.chatId,
    themeName: themeName ?? this.themeName,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatTheme';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatUnreadMentionCount extends Update {

  /// The chat unread_mention_count has changed
  const UpdateChatUnreadMentionCount({
    required this.chatId,
    required this.unreadMentionCount,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [unreadMentionCount] The number of unread mention messages left in the chat
  final int unreadMentionCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatUnreadMentionCount.fromJson(Map<String, dynamic> json) => UpdateChatUnreadMentionCount(
    chatId: json['chat_id'],
    unreadMentionCount: json['unread_mention_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "unread_mention_count": unreadMentionCount,
    };
  }
  
  @override
  UpdateChatUnreadMentionCount copyWith({
    int? chatId,
    int? unreadMentionCount,
    dynamic extra,
    int? clientId,
  }) => UpdateChatUnreadMentionCount(
    chatId: chatId ?? this.chatId,
    unreadMentionCount: unreadMentionCount ?? this.unreadMentionCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatUnreadMentionCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatVideoChat extends Update {

  /// A chat video chat state has changed
  const UpdateChatVideoChat({
    required this.chatId,
    required this.videoChat,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [videoChat] New value of video_chat
  final VideoChat videoChat;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatVideoChat.fromJson(Map<String, dynamic> json) => UpdateChatVideoChat(
    chatId: json['chat_id'],
    videoChat: VideoChat.fromJson(json['video_chat']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "video_chat": videoChat.toJson(),
    };
  }
  
  @override
  UpdateChatVideoChat copyWith({
    int? chatId,
    VideoChat? videoChat,
    dynamic extra,
    int? clientId,
  }) => UpdateChatVideoChat(
    chatId: chatId ?? this.chatId,
    videoChat: videoChat ?? this.videoChat,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatVideoChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatDefaultDisableNotification extends Update {

  /// The value of the default disable_notification parameter, used when a message is sent to the chat, was changed
  const UpdateChatDefaultDisableNotification({
    required this.chatId,
    required this.defaultDisableNotification,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [defaultDisableNotification] The new default_disable_notification value
  final bool defaultDisableNotification;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatDefaultDisableNotification.fromJson(Map<String, dynamic> json) => UpdateChatDefaultDisableNotification(
    chatId: json['chat_id'],
    defaultDisableNotification: json['default_disable_notification'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "default_disable_notification": defaultDisableNotification,
    };
  }
  
  @override
  UpdateChatDefaultDisableNotification copyWith({
    int? chatId,
    bool? defaultDisableNotification,
    dynamic extra,
    int? clientId,
  }) => UpdateChatDefaultDisableNotification(
    chatId: chatId ?? this.chatId,
    defaultDisableNotification: defaultDisableNotification ?? this.defaultDisableNotification,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatDefaultDisableNotification';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatHasProtectedContent extends Update {

  /// A chat content was allowed or restricted for saving
  const UpdateChatHasProtectedContent({
    required this.chatId,
    required this.hasProtectedContent,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [hasProtectedContent] New value of has_protected_content
  final bool hasProtectedContent;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatHasProtectedContent.fromJson(Map<String, dynamic> json) => UpdateChatHasProtectedContent(
    chatId: json['chat_id'],
    hasProtectedContent: json['has_protected_content'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "has_protected_content": hasProtectedContent,
    };
  }
  
  @override
  UpdateChatHasProtectedContent copyWith({
    int? chatId,
    bool? hasProtectedContent,
    dynamic extra,
    int? clientId,
  }) => UpdateChatHasProtectedContent(
    chatId: chatId ?? this.chatId,
    hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatHasProtectedContent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatHasScheduledMessages extends Update {

  /// A chat's has_scheduled_messages field has changed
  const UpdateChatHasScheduledMessages({
    required this.chatId,
    required this.hasScheduledMessages,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [hasScheduledMessages] New value of has_scheduled_messages
  final bool hasScheduledMessages;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatHasScheduledMessages.fromJson(Map<String, dynamic> json) => UpdateChatHasScheduledMessages(
    chatId: json['chat_id'],
    hasScheduledMessages: json['has_scheduled_messages'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "has_scheduled_messages": hasScheduledMessages,
    };
  }
  
  @override
  UpdateChatHasScheduledMessages copyWith({
    int? chatId,
    bool? hasScheduledMessages,
    dynamic extra,
    int? clientId,
  }) => UpdateChatHasScheduledMessages(
    chatId: chatId ?? this.chatId,
    hasScheduledMessages: hasScheduledMessages ?? this.hasScheduledMessages,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatHasScheduledMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatIsBlocked extends Update {

  /// A chat was blocked or unblocked
  const UpdateChatIsBlocked({
    required this.chatId,
    required this.isBlocked,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [isBlocked] New value of is_blocked
  final bool isBlocked;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatIsBlocked.fromJson(Map<String, dynamic> json) => UpdateChatIsBlocked(
    chatId: json['chat_id'],
    isBlocked: json['is_blocked'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "is_blocked": isBlocked,
    };
  }
  
  @override
  UpdateChatIsBlocked copyWith({
    int? chatId,
    bool? isBlocked,
    dynamic extra,
    int? clientId,
  }) => UpdateChatIsBlocked(
    chatId: chatId ?? this.chatId,
    isBlocked: isBlocked ?? this.isBlocked,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatIsBlocked';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatIsMarkedAsUnread extends Update {

  /// A chat was marked as unread or was read
  const UpdateChatIsMarkedAsUnread({
    required this.chatId,
    required this.isMarkedAsUnread,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [isMarkedAsUnread] New value of is_marked_as_unread
  final bool isMarkedAsUnread;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json) => UpdateChatIsMarkedAsUnread(
    chatId: json['chat_id'],
    isMarkedAsUnread: json['is_marked_as_unread'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "is_marked_as_unread": isMarkedAsUnread,
    };
  }
  
  @override
  UpdateChatIsMarkedAsUnread copyWith({
    int? chatId,
    bool? isMarkedAsUnread,
    dynamic extra,
    int? clientId,
  }) => UpdateChatIsMarkedAsUnread(
    chatId: chatId ?? this.chatId,
    isMarkedAsUnread: isMarkedAsUnread ?? this.isMarkedAsUnread,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatIsMarkedAsUnread';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatFilters extends Update {

  /// The list of chat filters or a chat filter has changed
  const UpdateChatFilters({
    required this.chatFilters,
    this.extra,
    this.clientId,
  });
  
  /// [chatFilters] The new list of chat filters
  final List<ChatFilterInfo> chatFilters;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatFilters.fromJson(Map<String, dynamic> json) => UpdateChatFilters(
    chatFilters: List<ChatFilterInfo>.from((json['chat_filters'] ?? []).map((item) => ChatFilterInfo.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_filters": chatFilters.map((i) => i.toJson()).toList(),
    };
  }
  
  @override
  UpdateChatFilters copyWith({
    List<ChatFilterInfo>? chatFilters,
    dynamic extra,
    int? clientId,
  }) => UpdateChatFilters(
    chatFilters: chatFilters ?? this.chatFilters,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatFilters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatOnlineMemberCount extends Update {

  /// The number of online group members has changed. This update with non-zero count is sent only for currently opened chats. There is no guarantee that it will be sent just after the count has changed
  const UpdateChatOnlineMemberCount({
    required this.chatId,
    required this.onlineMemberCount,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Identifier of the chat 
  final int chatId;

  /// [onlineMemberCount] New number of online members in the chat, or 0 if unknown
  final int onlineMemberCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatOnlineMemberCount.fromJson(Map<String, dynamic> json) => UpdateChatOnlineMemberCount(
    chatId: json['chat_id'],
    onlineMemberCount: json['online_member_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "online_member_count": onlineMemberCount,
    };
  }
  
  @override
  UpdateChatOnlineMemberCount copyWith({
    int? chatId,
    int? onlineMemberCount,
    dynamic extra,
    int? clientId,
  }) => UpdateChatOnlineMemberCount(
    chatId: chatId ?? this.chatId,
    onlineMemberCount: onlineMemberCount ?? this.onlineMemberCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatOnlineMemberCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateScopeNotificationSettings extends Update {

  /// Notification settings for some type of chats were updated
  const UpdateScopeNotificationSettings({
    required this.scope,
    required this.notificationSettings,
    this.extra,
    this.clientId,
  });
  
  /// [scope] Types of chats for which notification settings were updated 
  final NotificationSettingsScope scope;

  /// [notificationSettings] The new notification settings
  final ScopeNotificationSettings notificationSettings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateScopeNotificationSettings.fromJson(Map<String, dynamic> json) => UpdateScopeNotificationSettings(
    scope: NotificationSettingsScope.fromJson(json['scope']),
    notificationSettings: ScopeNotificationSettings.fromJson(json['notification_settings']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "scope": scope.toJson(),
      "notification_settings": notificationSettings.toJson(),
    };
  }
  
  @override
  UpdateScopeNotificationSettings copyWith({
    NotificationSettingsScope? scope,
    ScopeNotificationSettings? notificationSettings,
    dynamic extra,
    int? clientId,
  }) => UpdateScopeNotificationSettings(
    scope: scope ?? this.scope,
    notificationSettings: notificationSettings ?? this.notificationSettings,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateScopeNotificationSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateNotification extends Update {

  /// A notification was changed
  const UpdateNotification({
    required this.notificationGroupId,
    required this.notification,
    this.extra,
    this.clientId,
  });
  
  /// [notificationGroupId] Unique notification group identifier 
  final int notificationGroupId;

  /// [notification] Changed notification
  final Notification notification;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNotification.fromJson(Map<String, dynamic> json) => UpdateNotification(
    notificationGroupId: json['notification_group_id'],
    notification: Notification.fromJson(json['notification']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "notification_group_id": notificationGroupId,
      "notification": notification.toJson(),
    };
  }
  
  @override
  UpdateNotification copyWith({
    int? notificationGroupId,
    Notification? notification,
    dynamic extra,
    int? clientId,
  }) => UpdateNotification(
    notificationGroupId: notificationGroupId ?? this.notificationGroupId,
    notification: notification ?? this.notification,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateNotification';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateNotificationGroup extends Update {

  /// A list of active notifications in a notification group has changed
  const UpdateNotificationGroup({
    required this.notificationGroupId,
    required this.type,
    required this.chatId,
    required this.notificationSettingsChatId,
    required this.isSilent,
    required this.totalCount,
    required this.addedNotifications,
    required this.removedNotificationIds,
    this.extra,
    this.clientId,
  });
  
  /// [notificationGroupId] Unique notification group identifier
  final int notificationGroupId;

  /// [type] New type of the notification group
  final NotificationGroupType type;

  /// [chatId] Identifier of a chat to which all notifications in the group belong
  final int chatId;

  /// [notificationSettingsChatId] Chat identifier, which notification settings must be applied to the added notifications
  final int notificationSettingsChatId;

  /// [isSilent] True, if the notifications must be shown without sound
  final bool isSilent;

  /// [totalCount] Total number of unread notifications in the group, can be bigger than number of active notifications
  final int totalCount;

  /// [addedNotifications] List of added group notifications, sorted by notification updateNotificationGroup
  final List<Notification> addedNotifications;

  /// [removedNotificationIds] Identifiers of removed group notifications, sorted by notification updateNotificationGroup
  final List<int> removedNotificationIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNotificationGroup.fromJson(Map<String, dynamic> json) => UpdateNotificationGroup(
    notificationGroupId: json['notification_group_id'],
    type: NotificationGroupType.fromJson(json['type']),
    chatId: json['chat_id'],
    notificationSettingsChatId: json['notification_settings_chat_id'],
    isSilent: json['is_silent'],
    totalCount: json['total_count'],
    addedNotifications: List<Notification>.from((json['added_notifications'] ?? []).map((item) => Notification.fromJson(item)).toList()),
    removedNotificationIds: List<int>.from((json['removed_notification_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "notification_group_id": notificationGroupId,
      "type": type.toJson(),
      "chat_id": chatId,
      "notification_settings_chat_id": notificationSettingsChatId,
      "is_silent": isSilent,
      "total_count": totalCount,
      "added_notifications": addedNotifications.map((i) => i.toJson()).toList(),
      "removed_notification_ids": removedNotificationIds.map((i) => i).toList(),
    };
  }
  
  @override
  UpdateNotificationGroup copyWith({
    int? notificationGroupId,
    NotificationGroupType? type,
    int? chatId,
    int? notificationSettingsChatId,
    bool? isSilent,
    int? totalCount,
    List<Notification>? addedNotifications,
    List<int>? removedNotificationIds,
    dynamic extra,
    int? clientId,
  }) => UpdateNotificationGroup(
    notificationGroupId: notificationGroupId ?? this.notificationGroupId,
    type: type ?? this.type,
    chatId: chatId ?? this.chatId,
    notificationSettingsChatId: notificationSettingsChatId ?? this.notificationSettingsChatId,
    isSilent: isSilent ?? this.isSilent,
    totalCount: totalCount ?? this.totalCount,
    addedNotifications: addedNotifications ?? this.addedNotifications,
    removedNotificationIds: removedNotificationIds ?? this.removedNotificationIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateNotificationGroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateActiveNotifications extends Update {

  /// Contains active notifications that was shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update
  const UpdateActiveNotifications({
    required this.groups,
    this.extra,
    this.clientId,
  });
  
  /// [groups] Lists of active notification groups
  final List<NotificationGroup> groups;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateActiveNotifications.fromJson(Map<String, dynamic> json) => UpdateActiveNotifications(
    groups: List<NotificationGroup>.from((json['groups'] ?? []).map((item) => NotificationGroup.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "groups": groups.map((i) => i.toJson()).toList(),
    };
  }
  
  @override
  UpdateActiveNotifications copyWith({
    List<NotificationGroup>? groups,
    dynamic extra,
    int? clientId,
  }) => UpdateActiveNotifications(
    groups: groups ?? this.groups,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateActiveNotifications';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateHavePendingNotifications extends Update {

  /// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications
  const UpdateHavePendingNotifications({
    required this.haveDelayedNotifications,
    required this.haveUnreceivedNotifications,
    this.extra,
    this.clientId,
  });
  
  /// [haveDelayedNotifications] True, if there are some delayed notification updates, which will be sent soon
  final bool haveDelayedNotifications;

  /// [haveUnreceivedNotifications] True, if there can be some yet unreceived notifications, which are being fetched from the server
  final bool haveUnreceivedNotifications;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateHavePendingNotifications.fromJson(Map<String, dynamic> json) => UpdateHavePendingNotifications(
    haveDelayedNotifications: json['have_delayed_notifications'],
    haveUnreceivedNotifications: json['have_unreceived_notifications'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "have_delayed_notifications": haveDelayedNotifications,
      "have_unreceived_notifications": haveUnreceivedNotifications,
    };
  }
  
  @override
  UpdateHavePendingNotifications copyWith({
    bool? haveDelayedNotifications,
    bool? haveUnreceivedNotifications,
    dynamic extra,
    int? clientId,
  }) => UpdateHavePendingNotifications(
    haveDelayedNotifications: haveDelayedNotifications ?? this.haveDelayedNotifications,
    haveUnreceivedNotifications: haveUnreceivedNotifications ?? this.haveUnreceivedNotifications,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateHavePendingNotifications';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateDeleteMessages extends Update {

  /// Some messages were deleted
  const UpdateDeleteMessages({
    required this.chatId,
    required this.messageIds,
    required this.isPermanent,
    required this.fromCache,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageIds] Identifiers of the deleted messages
  final List<int> messageIds;

  /// [isPermanent] True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible)
  final bool isPermanent;

  /// [fromCache] True, if the messages are deleted only from the cache and can possibly be retrieved again in the future
  final bool fromCache;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateDeleteMessages.fromJson(Map<String, dynamic> json) => UpdateDeleteMessages(
    chatId: json['chat_id'],
    messageIds: List<int>.from((json['message_ids'] ?? []).map((item) => item).toList()),
    isPermanent: json['is_permanent'],
    fromCache: json['from_cache'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_ids": messageIds.map((i) => i).toList(),
      "is_permanent": isPermanent,
      "from_cache": fromCache,
    };
  }
  
  @override
  UpdateDeleteMessages copyWith({
    int? chatId,
    List<int>? messageIds,
    bool? isPermanent,
    bool? fromCache,
    dynamic extra,
    int? clientId,
  }) => UpdateDeleteMessages(
    chatId: chatId ?? this.chatId,
    messageIds: messageIds ?? this.messageIds,
    isPermanent: isPermanent ?? this.isPermanent,
    fromCache: fromCache ?? this.fromCache,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateDeleteMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatAction extends Update {

  /// A message sender activity in the chat has changed
  const UpdateChatAction({
    required this.chatId,
    required this.messageThreadId,
    required this.senderId,
    required this.action,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the action was performed 
  final int messageThreadId;

  /// [senderId] Identifier of a message sender performing the action 
  final MessageSender senderId;

  /// [action] The action
  final ChatAction action;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatAction.fromJson(Map<String, dynamic> json) => UpdateChatAction(
    chatId: json['chat_id'],
    messageThreadId: json['message_thread_id'],
    senderId: MessageSender.fromJson(json['sender_id']),
    action: ChatAction.fromJson(json['action']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "sender_id": senderId.toJson(),
      "action": action.toJson(),
    };
  }
  
  @override
  UpdateChatAction copyWith({
    int? chatId,
    int? messageThreadId,
    MessageSender? senderId,
    ChatAction? action,
    dynamic extra,
    int? clientId,
  }) => UpdateChatAction(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    senderId: senderId ?? this.senderId,
    action: action ?? this.action,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatAction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateUserStatus extends Update {

  /// The user went online or offline
  const UpdateUserStatus({
    required this.userId,
    required this.status,
    this.extra,
    this.clientId,
  });
  
  /// [userId] User identifier 
  final int userId;

  /// [status] New status of the user
  final UserStatus status;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateUserStatus.fromJson(Map<String, dynamic> json) => UpdateUserStatus(
    userId: json['user_id'],
    status: UserStatus.fromJson(json['status']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "status": status.toJson(),
    };
  }
  
  @override
  UpdateUserStatus copyWith({
    int? userId,
    UserStatus? status,
    dynamic extra,
    int? clientId,
  }) => UpdateUserStatus(
    userId: userId ?? this.userId,
    status: status ?? this.status,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateUserStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateUser extends Update {

  /// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application
  const UpdateUser({
    required this.user,
    this.extra,
    this.clientId,
  });
  
  /// [user] New data about the user
  final User user;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateUser.fromJson(Map<String, dynamic> json) => UpdateUser(
    user: User.fromJson(json['user']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user": user.toJson(),
    };
  }
  
  @override
  UpdateUser copyWith({
    User? user,
    dynamic extra,
    int? clientId,
  }) => UpdateUser(
    user: user ?? this.user,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateBasicGroup extends Update {

  /// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application
  const UpdateBasicGroup({
    required this.basicGroup,
    this.extra,
    this.clientId,
  });
  
  /// [basicGroup] New data about the group
  final BasicGroup basicGroup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateBasicGroup.fromJson(Map<String, dynamic> json) => UpdateBasicGroup(
    basicGroup: BasicGroup.fromJson(json['basic_group']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "basic_group": basicGroup.toJson(),
    };
  }
  
  @override
  UpdateBasicGroup copyWith({
    BasicGroup? basicGroup,
    dynamic extra,
    int? clientId,
  }) => UpdateBasicGroup(
    basicGroup: basicGroup ?? this.basicGroup,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateBasicGroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateSupergroup extends Update {

  /// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application
  const UpdateSupergroup({
    required this.supergroup,
    this.extra,
    this.clientId,
  });
  
  /// [supergroup] New data about the supergroup
  final Supergroup supergroup;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateSupergroup.fromJson(Map<String, dynamic> json) => UpdateSupergroup(
    supergroup: Supergroup.fromJson(json['supergroup']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup": supergroup.toJson(),
    };
  }
  
  @override
  UpdateSupergroup copyWith({
    Supergroup? supergroup,
    dynamic extra,
    int? clientId,
  }) => UpdateSupergroup(
    supergroup: supergroup ?? this.supergroup,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateSupergroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateSecretChat extends Update {

  /// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application
  const UpdateSecretChat({
    required this.secretChat,
    this.extra,
    this.clientId,
  });
  
  /// [secretChat] New data about the secret chat
  final SecretChat secretChat;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateSecretChat.fromJson(Map<String, dynamic> json) => UpdateSecretChat(
    secretChat: SecretChat.fromJson(json['secret_chat']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat": secretChat.toJson(),
    };
  }
  
  @override
  UpdateSecretChat copyWith({
    SecretChat? secretChat,
    dynamic extra,
    int? clientId,
  }) => UpdateSecretChat(
    secretChat: secretChat ?? this.secretChat,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateSecretChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateUserFullInfo extends Update {

  /// Some data in userFullInfo has been changed
  const UpdateUserFullInfo({
    required this.userId,
    required this.userFullInfo,
    this.extra,
    this.clientId,
  });
  
  /// [userId] User identifier 
  final int userId;

  /// [userFullInfo] New full information about the user
  final UserFullInfo userFullInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateUserFullInfo.fromJson(Map<String, dynamic> json) => UpdateUserFullInfo(
    userId: json['user_id'],
    userFullInfo: UserFullInfo.fromJson(json['user_full_info']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "user_full_info": userFullInfo.toJson(),
    };
  }
  
  @override
  UpdateUserFullInfo copyWith({
    int? userId,
    UserFullInfo? userFullInfo,
    dynamic extra,
    int? clientId,
  }) => UpdateUserFullInfo(
    userId: userId ?? this.userId,
    userFullInfo: userFullInfo ?? this.userFullInfo,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateUserFullInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateBasicGroupFullInfo extends Update {

  /// Some data in basicGroupFullInfo has been changed
  const UpdateBasicGroupFullInfo({
    required this.basicGroupId,
    required this.basicGroupFullInfo,
    this.extra,
    this.clientId,
  });
  
  /// [basicGroupId] Identifier of a basic group 
  final int basicGroupId;

  /// [basicGroupFullInfo] New full information about the group
  final BasicGroupFullInfo basicGroupFullInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateBasicGroupFullInfo.fromJson(Map<String, dynamic> json) => UpdateBasicGroupFullInfo(
    basicGroupId: json['basic_group_id'],
    basicGroupFullInfo: BasicGroupFullInfo.fromJson(json['basic_group_full_info']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": basicGroupId,
      "basic_group_full_info": basicGroupFullInfo.toJson(),
    };
  }
  
  @override
  UpdateBasicGroupFullInfo copyWith({
    int? basicGroupId,
    BasicGroupFullInfo? basicGroupFullInfo,
    dynamic extra,
    int? clientId,
  }) => UpdateBasicGroupFullInfo(
    basicGroupId: basicGroupId ?? this.basicGroupId,
    basicGroupFullInfo: basicGroupFullInfo ?? this.basicGroupFullInfo,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateBasicGroupFullInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateSupergroupFullInfo extends Update {

  /// Some data in supergroupFullInfo has been changed
  const UpdateSupergroupFullInfo({
    required this.supergroupId,
    required this.supergroupFullInfo,
    this.extra,
    this.clientId,
  });
  
  /// [supergroupId] Identifier of the supergroup or channel 
  final int supergroupId;

  /// [supergroupFullInfo] New full information about the supergroup
  final SupergroupFullInfo supergroupFullInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateSupergroupFullInfo.fromJson(Map<String, dynamic> json) => UpdateSupergroupFullInfo(
    supergroupId: json['supergroup_id'],
    supergroupFullInfo: SupergroupFullInfo.fromJson(json['supergroup_full_info']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "supergroup_full_info": supergroupFullInfo.toJson(),
    };
  }
  
  @override
  UpdateSupergroupFullInfo copyWith({
    int? supergroupId,
    SupergroupFullInfo? supergroupFullInfo,
    dynamic extra,
    int? clientId,
  }) => UpdateSupergroupFullInfo(
    supergroupId: supergroupId ?? this.supergroupId,
    supergroupFullInfo: supergroupFullInfo ?? this.supergroupFullInfo,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateSupergroupFullInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateServiceNotification extends Update {

  /// A service notification from the server was received. Upon receiving this the application must show a popup with the content of the notification
  const UpdateServiceNotification({
    required this.type,
    required this.content,
    this.extra,
    this.clientId,
  });
  
  /// [type] Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" must be shown under notification; if user presses the second, all local data must be destroyed using Destroy method
  final String type;

  /// [content] Notification content
  final MessageContent content;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateServiceNotification.fromJson(Map<String, dynamic> json) => UpdateServiceNotification(
    type: json['type'],
    content: MessageContent.fromJson(json['content']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type,
      "content": content.toJson(),
    };
  }
  
  @override
  UpdateServiceNotification copyWith({
    String? type,
    MessageContent? content,
    dynamic extra,
    int? clientId,
  }) => UpdateServiceNotification(
    type: type ?? this.type,
    content: content ?? this.content,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateServiceNotification';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateFile extends Update {

  /// Information about a file was updated
  const UpdateFile({
    required this.file,
    this.extra,
    this.clientId,
  });
  
  /// [file] New data about the file
  final File file;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateFile.fromJson(Map<String, dynamic> json) => UpdateFile(
    file: File.fromJson(json['file']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file": file.toJson(),
    };
  }
  
  @override
  UpdateFile copyWith({
    File? file,
    dynamic extra,
    int? clientId,
  }) => UpdateFile(
    file: file ?? this.file,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateFileGenerationStart extends Update {

  /// The file generation process needs to be started by the application
  const UpdateFileGenerationStart({
    required this.generationId,
    required this.originalPath,
    required this.destinationPath,
    required this.conversion,
    this.extra,
    this.clientId,
  });
  
  /// [generationId] Unique identifier for the generation process
  final int generationId;

  /// [originalPath] The path to a file from which a new file is generated; may be empty
  final String originalPath;

  /// [destinationPath] The path to a file that must be created and where the new file is generated
  final String destinationPath;

  /// [conversion] String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which must be downloaded by the application
  final String conversion;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateFileGenerationStart.fromJson(Map<String, dynamic> json) => UpdateFileGenerationStart(
    generationId: int.parse(json['generation_id']),
    originalPath: json['original_path'],
    destinationPath: json['destination_path'],
    conversion: json['conversion'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": generationId,
      "original_path": originalPath,
      "destination_path": destinationPath,
      "conversion": conversion,
    };
  }
  
  @override
  UpdateFileGenerationStart copyWith({
    int? generationId,
    String? originalPath,
    String? destinationPath,
    String? conversion,
    dynamic extra,
    int? clientId,
  }) => UpdateFileGenerationStart(
    generationId: generationId ?? this.generationId,
    originalPath: originalPath ?? this.originalPath,
    destinationPath: destinationPath ?? this.destinationPath,
    conversion: conversion ?? this.conversion,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateFileGenerationStart';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateFileGenerationStop extends Update {

  /// File generation is no longer needed
  const UpdateFileGenerationStop({
    required this.generationId,
    this.extra,
    this.clientId,
  });
  
  /// [generationId] Unique identifier for the generation process
  final int generationId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateFileGenerationStop.fromJson(Map<String, dynamic> json) => UpdateFileGenerationStop(
    generationId: int.parse(json['generation_id']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": generationId,
    };
  }
  
  @override
  UpdateFileGenerationStop copyWith({
    int? generationId,
    dynamic extra,
    int? clientId,
  }) => UpdateFileGenerationStop(
    generationId: generationId ?? this.generationId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateFileGenerationStop';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateCall extends Update {

  /// New call was created or information about a call was updated
  const UpdateCall({
    required this.call,
    this.extra,
    this.clientId,
  });
  
  /// [call] New data about a call
  final Call call;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateCall.fromJson(Map<String, dynamic> json) => UpdateCall(
    call: Call.fromJson(json['call']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "call": call.toJson(),
    };
  }
  
  @override
  UpdateCall copyWith({
    Call? call,
    dynamic extra,
    int? clientId,
  }) => UpdateCall(
    call: call ?? this.call,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateGroupCall extends Update {

  /// Information about a group call was updated
  const UpdateGroupCall({
    required this.groupCall,
    this.extra,
    this.clientId,
  });
  
  /// [groupCall] New data about a group call
  final GroupCall groupCall;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateGroupCall.fromJson(Map<String, dynamic> json) => UpdateGroupCall(
    groupCall: GroupCall.fromJson(json['group_call']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call": groupCall.toJson(),
    };
  }
  
  @override
  UpdateGroupCall copyWith({
    GroupCall? groupCall,
    dynamic extra,
    int? clientId,
  }) => UpdateGroupCall(
    groupCall: groupCall ?? this.groupCall,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateGroupCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateGroupCallParticipant extends Update {

  /// Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined
  const UpdateGroupCallParticipant({
    required this.groupCallId,
    required this.participant,
    this.extra,
    this.clientId,
  });
  
  /// [groupCallId] Identifier of group call
  final int groupCallId;

  /// [participant] New data about a participant
  final GroupCallParticipant participant;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateGroupCallParticipant.fromJson(Map<String, dynamic> json) => UpdateGroupCallParticipant(
    groupCallId: json['group_call_id'],
    participant: GroupCallParticipant.fromJson(json['participant']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "participant": participant.toJson(),
    };
  }
  
  @override
  UpdateGroupCallParticipant copyWith({
    int? groupCallId,
    GroupCallParticipant? participant,
    dynamic extra,
    int? clientId,
  }) => UpdateGroupCallParticipant(
    groupCallId: groupCallId ?? this.groupCallId,
    participant: participant ?? this.participant,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateGroupCallParticipant';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateNewCallSignalingData extends Update {

  /// New call signaling data arrived
  const UpdateNewCallSignalingData({
    required this.callId,
    required this.data,
    this.extra,
    this.clientId,
  });
  
  /// [callId] The call identifier 
  final int callId;

  /// [data] The data
  final String data;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewCallSignalingData.fromJson(Map<String, dynamic> json) => UpdateNewCallSignalingData(
    callId: json['call_id'],
    data: json['data'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "call_id": callId,
      "data": data,
    };
  }
  
  @override
  UpdateNewCallSignalingData copyWith({
    int? callId,
    String? data,
    dynamic extra,
    int? clientId,
  }) => UpdateNewCallSignalingData(
    callId: callId ?? this.callId,
    data: data ?? this.data,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateNewCallSignalingData';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateUserPrivacySettingRules extends Update {

  /// Some privacy setting rules have been changed
  const UpdateUserPrivacySettingRules({
    required this.setting,
    required this.rules,
    this.extra,
    this.clientId,
  });
  
  /// [setting] The privacy setting 
  final UserPrivacySetting setting;

  /// [rules] New privacy rules
  final UserPrivacySettingRules rules;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateUserPrivacySettingRules.fromJson(Map<String, dynamic> json) => UpdateUserPrivacySettingRules(
    setting: UserPrivacySetting.fromJson(json['setting']),
    rules: UserPrivacySettingRules.fromJson(json['rules']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "setting": setting.toJson(),
      "rules": rules.toJson(),
    };
  }
  
  @override
  UpdateUserPrivacySettingRules copyWith({
    UserPrivacySetting? setting,
    UserPrivacySettingRules? rules,
    dynamic extra,
    int? clientId,
  }) => UpdateUserPrivacySettingRules(
    setting: setting ?? this.setting,
    rules: rules ?? this.rules,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateUserPrivacySettingRules';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateUnreadMessageCount extends Update {

  /// Number of unread messages in a chat list has changed. This update is sent only if the message database is used
  const UpdateUnreadMessageCount({
    required this.chatList,
    required this.unreadCount,
    required this.unreadUnmutedCount,
    this.extra,
    this.clientId,
  });
  
  /// [chatList] The chat list with changed number of unread messages
  final ChatList chatList;

  /// [unreadCount] Total number of unread messages
  final int unreadCount;

  /// [unreadUnmutedCount] Total number of unread messages in unmuted chats
  final int unreadUnmutedCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateUnreadMessageCount.fromJson(Map<String, dynamic> json) => UpdateUnreadMessageCount(
    chatList: ChatList.fromJson(json['chat_list']),
    unreadCount: json['unread_count'],
    unreadUnmutedCount: json['unread_unmuted_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": chatList.toJson(),
      "unread_count": unreadCount,
      "unread_unmuted_count": unreadUnmutedCount,
    };
  }
  
  @override
  UpdateUnreadMessageCount copyWith({
    ChatList? chatList,
    int? unreadCount,
    int? unreadUnmutedCount,
    dynamic extra,
    int? clientId,
  }) => UpdateUnreadMessageCount(
    chatList: chatList ?? this.chatList,
    unreadCount: unreadCount ?? this.unreadCount,
    unreadUnmutedCount: unreadUnmutedCount ?? this.unreadUnmutedCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateUnreadMessageCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateUnreadChatCount extends Update {

  /// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used
  const UpdateUnreadChatCount({
    required this.chatList,
    required this.totalCount,
    required this.unreadCount,
    required this.unreadUnmutedCount,
    required this.markedAsUnreadCount,
    required this.markedAsUnreadUnmutedCount,
    this.extra,
    this.clientId,
  });
  
  /// [chatList] The chat list with changed number of unread messages
  final ChatList chatList;

  /// [totalCount] Approximate total number of chats in the chat list
  final int totalCount;

  /// [unreadCount] Total number of unread chats
  final int unreadCount;

  /// [unreadUnmutedCount] Total number of unread unmuted chats
  final int unreadUnmutedCount;

  /// [markedAsUnreadCount] Total number of chats marked as unread
  final int markedAsUnreadCount;

  /// [markedAsUnreadUnmutedCount] Total number of unmuted chats marked as unread
  final int markedAsUnreadUnmutedCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateUnreadChatCount.fromJson(Map<String, dynamic> json) => UpdateUnreadChatCount(
    chatList: ChatList.fromJson(json['chat_list']),
    totalCount: json['total_count'],
    unreadCount: json['unread_count'],
    unreadUnmutedCount: json['unread_unmuted_count'],
    markedAsUnreadCount: json['marked_as_unread_count'],
    markedAsUnreadUnmutedCount: json['marked_as_unread_unmuted_count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": chatList.toJson(),
      "total_count": totalCount,
      "unread_count": unreadCount,
      "unread_unmuted_count": unreadUnmutedCount,
      "marked_as_unread_count": markedAsUnreadCount,
      "marked_as_unread_unmuted_count": markedAsUnreadUnmutedCount,
    };
  }
  
  @override
  UpdateUnreadChatCount copyWith({
    ChatList? chatList,
    int? totalCount,
    int? unreadCount,
    int? unreadUnmutedCount,
    int? markedAsUnreadCount,
    int? markedAsUnreadUnmutedCount,
    dynamic extra,
    int? clientId,
  }) => UpdateUnreadChatCount(
    chatList: chatList ?? this.chatList,
    totalCount: totalCount ?? this.totalCount,
    unreadCount: unreadCount ?? this.unreadCount,
    unreadUnmutedCount: unreadUnmutedCount ?? this.unreadUnmutedCount,
    markedAsUnreadCount: markedAsUnreadCount ?? this.markedAsUnreadCount,
    markedAsUnreadUnmutedCount: markedAsUnreadUnmutedCount ?? this.markedAsUnreadUnmutedCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateUnreadChatCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateOption extends Update {

  /// An option changed its value
  const UpdateOption({
    required this.name,
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// [name] The option name 
  final String name;

  /// [value] The new option value
  final OptionValue value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateOption.fromJson(Map<String, dynamic> json) => UpdateOption(
    name: json['name'],
    value: OptionValue.fromJson(json['value']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "value": value.toJson(),
    };
  }
  
  @override
  UpdateOption copyWith({
    String? name,
    OptionValue? value,
    dynamic extra,
    int? clientId,
  }) => UpdateOption(
    name: name ?? this.name,
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateOption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateStickerSet extends Update {

  /// A sticker set has changed
  const UpdateStickerSet({
    required this.stickerSet,
    this.extra,
    this.clientId,
  });
  
  /// [stickerSet] The sticker set
  final StickerSet stickerSet;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateStickerSet.fromJson(Map<String, dynamic> json) => UpdateStickerSet(
    stickerSet: StickerSet.fromJson(json['sticker_set']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set": stickerSet.toJson(),
    };
  }
  
  @override
  UpdateStickerSet copyWith({
    StickerSet? stickerSet,
    dynamic extra,
    int? clientId,
  }) => UpdateStickerSet(
    stickerSet: stickerSet ?? this.stickerSet,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateInstalledStickerSets extends Update {

  /// The list of installed sticker sets was updated
  const UpdateInstalledStickerSets({
    required this.isMasks,
    required this.stickerSetIds,
    this.extra,
    this.clientId,
  });
  
  /// [isMasks] True, if the list of installed mask sticker sets was updated 
  final bool isMasks;

  /// [stickerSetIds] The new list of installed ordinary sticker sets
  final List<int> stickerSetIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateInstalledStickerSets.fromJson(Map<String, dynamic> json) => UpdateInstalledStickerSets(
    isMasks: json['is_masks'],
    stickerSetIds: List<int>.from((json['sticker_set_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": isMasks,
      "sticker_set_ids": stickerSetIds.map((i) => i).toList(),
    };
  }
  
  @override
  UpdateInstalledStickerSets copyWith({
    bool? isMasks,
    List<int>? stickerSetIds,
    dynamic extra,
    int? clientId,
  }) => UpdateInstalledStickerSets(
    isMasks: isMasks ?? this.isMasks,
    stickerSetIds: stickerSetIds ?? this.stickerSetIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateInstalledStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateTrendingStickerSets extends Update {

  /// The list of trending sticker sets was updated or some of them were viewed
  const UpdateTrendingStickerSets({
    required this.stickerSets,
    this.extra,
    this.clientId,
  });
  
  /// [stickerSets] The prefix of the list of trending sticker sets with the newest trending sticker sets
  final StickerSets stickerSets;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateTrendingStickerSets.fromJson(Map<String, dynamic> json) => UpdateTrendingStickerSets(
    stickerSets: StickerSets.fromJson(json['sticker_sets']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_sets": stickerSets.toJson(),
    };
  }
  
  @override
  UpdateTrendingStickerSets copyWith({
    StickerSets? stickerSets,
    dynamic extra,
    int? clientId,
  }) => UpdateTrendingStickerSets(
    stickerSets: stickerSets ?? this.stickerSets,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateTrendingStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateRecentStickers extends Update {

  /// The list of recently used stickers was updated
  const UpdateRecentStickers({
    required this.isAttached,
    required this.stickerIds,
    this.extra,
    this.clientId,
  });
  
  /// [isAttached] True, if the list of stickers attached to photo or video files was updated, otherwise the list of sent stickers is updated 
  final bool isAttached;

  /// [stickerIds] The new list of file identifiers of recently used stickers
  final List<int> stickerIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateRecentStickers.fromJson(Map<String, dynamic> json) => UpdateRecentStickers(
    isAttached: json['is_attached'],
    stickerIds: List<int>.from((json['sticker_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_attached": isAttached,
      "sticker_ids": stickerIds.map((i) => i).toList(),
    };
  }
  
  @override
  UpdateRecentStickers copyWith({
    bool? isAttached,
    List<int>? stickerIds,
    dynamic extra,
    int? clientId,
  }) => UpdateRecentStickers(
    isAttached: isAttached ?? this.isAttached,
    stickerIds: stickerIds ?? this.stickerIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateRecentStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateFavoriteStickers extends Update {

  /// The list of favorite stickers was updated
  const UpdateFavoriteStickers({
    required this.stickerIds,
    this.extra,
    this.clientId,
  });
  
  /// [stickerIds] The new list of file identifiers of favorite stickers
  final List<int> stickerIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateFavoriteStickers.fromJson(Map<String, dynamic> json) => UpdateFavoriteStickers(
    stickerIds: List<int>.from((json['sticker_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_ids": stickerIds.map((i) => i).toList(),
    };
  }
  
  @override
  UpdateFavoriteStickers copyWith({
    List<int>? stickerIds,
    dynamic extra,
    int? clientId,
  }) => UpdateFavoriteStickers(
    stickerIds: stickerIds ?? this.stickerIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateFavoriteStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateSavedAnimations extends Update {

  /// The list of saved animations was updated
  const UpdateSavedAnimations({
    required this.animationIds,
    this.extra,
    this.clientId,
  });
  
  /// [animationIds] The new list of file identifiers of saved animations
  final List<int> animationIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateSavedAnimations.fromJson(Map<String, dynamic> json) => UpdateSavedAnimations(
    animationIds: List<int>.from((json['animation_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animation_ids": animationIds.map((i) => i).toList(),
    };
  }
  
  @override
  UpdateSavedAnimations copyWith({
    List<int>? animationIds,
    dynamic extra,
    int? clientId,
  }) => UpdateSavedAnimations(
    animationIds: animationIds ?? this.animationIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateSavedAnimations';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateSelectedBackground extends Update {

  /// The selected background has changed
  const UpdateSelectedBackground({
    required this.forDarkTheme,
    this.background,
    this.extra,
    this.clientId,
  });
  
  /// [forDarkTheme] True, if background for dark theme has changed 
  final bool forDarkTheme;

  /// [background] The new selected background; may be null
  final Background? background;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateSelectedBackground.fromJson(Map<String, dynamic> json) => UpdateSelectedBackground(
    forDarkTheme: json['for_dark_theme'],
    background: json['background'] == null ? null : Background.fromJson(json['background']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "for_dark_theme": forDarkTheme,
      "background": background?.toJson(),
    };
  }
  
  @override
  UpdateSelectedBackground copyWith({
    bool? forDarkTheme,
    Background? background,
    dynamic extra,
    int? clientId,
  }) => UpdateSelectedBackground(
    forDarkTheme: forDarkTheme ?? this.forDarkTheme,
    background: background ?? this.background,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateSelectedBackground';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatThemes extends Update {

  /// The list of available chat themes has changed
  const UpdateChatThemes({
    required this.chatThemes,
    this.extra,
    this.clientId,
  });
  
  /// [chatThemes] The new list of chat themes
  final List<ChatTheme> chatThemes;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatThemes.fromJson(Map<String, dynamic> json) => UpdateChatThemes(
    chatThemes: List<ChatTheme>.from((json['chat_themes'] ?? []).map((item) => ChatTheme.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_themes": chatThemes.map((i) => i.toJson()).toList(),
    };
  }
  
  @override
  UpdateChatThemes copyWith({
    List<ChatTheme>? chatThemes,
    dynamic extra,
    int? clientId,
  }) => UpdateChatThemes(
    chatThemes: chatThemes ?? this.chatThemes,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatThemes';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateLanguagePackStrings extends Update {

  /// Some language pack strings have been updated
  const UpdateLanguagePackStrings({
    required this.localizationTarget,
    required this.languagePackId,
    required this.strings,
    this.extra,
    this.clientId,
  });
  
  /// [localizationTarget] Localization target to which the language pack belongs 
  final String localizationTarget;

  /// [languagePackId] Identifier of the updated language pack 
  final String languagePackId;

  /// [strings] List of changed language pack strings
  final List<LanguagePackString> strings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateLanguagePackStrings.fromJson(Map<String, dynamic> json) => UpdateLanguagePackStrings(
    localizationTarget: json['localization_target'],
    languagePackId: json['language_pack_id'],
    strings: List<LanguagePackString>.from((json['strings'] ?? []).map((item) => LanguagePackString.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "localization_target": localizationTarget,
      "language_pack_id": languagePackId,
      "strings": strings.map((i) => i.toJson()).toList(),
    };
  }
  
  @override
  UpdateLanguagePackStrings copyWith({
    String? localizationTarget,
    String? languagePackId,
    List<LanguagePackString>? strings,
    dynamic extra,
    int? clientId,
  }) => UpdateLanguagePackStrings(
    localizationTarget: localizationTarget ?? this.localizationTarget,
    languagePackId: languagePackId ?? this.languagePackId,
    strings: strings ?? this.strings,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateLanguagePackStrings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateConnectionState extends Update {

  /// The connection state has changed. This update must be used only to show a human-readable description of the connection state
  const UpdateConnectionState({
    required this.state,
    this.extra,
    this.clientId,
  });
  
  /// [state] The new connection state
  final ConnectionState state;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateConnectionState.fromJson(Map<String, dynamic> json) => UpdateConnectionState(
    state: ConnectionState.fromJson(json['state']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "state": state.toJson(),
    };
  }
  
  @override
  UpdateConnectionState copyWith({
    ConnectionState? state,
    dynamic extra,
    int? clientId,
  }) => UpdateConnectionState(
    state: state ?? this.state,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateConnectionState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateTermsOfService extends Update {

  /// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method must be called with the reason "Decline ToS update"
  const UpdateTermsOfService({
    required this.termsOfServiceId,
    required this.termsOfService,
    this.extra,
    this.clientId,
  });
  
  /// [termsOfServiceId] Identifier of the terms of service 
  final String termsOfServiceId;

  /// [termsOfService] The new terms of service
  final TermsOfService termsOfService;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateTermsOfService.fromJson(Map<String, dynamic> json) => UpdateTermsOfService(
    termsOfServiceId: json['terms_of_service_id'],
    termsOfService: TermsOfService.fromJson(json['terms_of_service']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "terms_of_service_id": termsOfServiceId,
      "terms_of_service": termsOfService.toJson(),
    };
  }
  
  @override
  UpdateTermsOfService copyWith({
    String? termsOfServiceId,
    TermsOfService? termsOfService,
    dynamic extra,
    int? clientId,
  }) => UpdateTermsOfService(
    termsOfServiceId: termsOfServiceId ?? this.termsOfServiceId,
    termsOfService: termsOfService ?? this.termsOfService,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateTermsOfService';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateUsersNearby extends Update {

  /// The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request
  const UpdateUsersNearby({
    required this.usersNearby,
    this.extra,
    this.clientId,
  });
  
  /// [usersNearby] The new list of users nearby
  final List<ChatNearby> usersNearby;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateUsersNearby.fromJson(Map<String, dynamic> json) => UpdateUsersNearby(
    usersNearby: List<ChatNearby>.from((json['users_nearby'] ?? []).map((item) => ChatNearby.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "users_nearby": usersNearby.map((i) => i.toJson()).toList(),
    };
  }
  
  @override
  UpdateUsersNearby copyWith({
    List<ChatNearby>? usersNearby,
    dynamic extra,
    int? clientId,
  }) => UpdateUsersNearby(
    usersNearby: usersNearby ?? this.usersNearby,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateUsersNearby';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateDiceEmojis extends Update {

  /// The list of supported dice emojis has changed
  const UpdateDiceEmojis({
    required this.emojis,
    this.extra,
    this.clientId,
  });
  
  /// [emojis] The new list of supported dice emojis
  final List<String> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateDiceEmojis.fromJson(Map<String, dynamic> json) => UpdateDiceEmojis(
    emojis: List<String>.from((json['emojis'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emojis": emojis.map((i) => i).toList(),
    };
  }
  
  @override
  UpdateDiceEmojis copyWith({
    List<String>? emojis,
    dynamic extra,
    int? clientId,
  }) => UpdateDiceEmojis(
    emojis: emojis ?? this.emojis,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateDiceEmojis';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateAnimatedEmojiMessageClicked extends Update {

  /// Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the screen. chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played
  const UpdateAnimatedEmojiMessageClicked({
    required this.chatId,
    required this.messageId,
    required this.sticker,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier 
  final int messageId;

  /// [sticker] The animated sticker to be played
  final Sticker sticker;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateAnimatedEmojiMessageClicked.fromJson(Map<String, dynamic> json) => UpdateAnimatedEmojiMessageClicked(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    sticker: Sticker.fromJson(json['sticker']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "sticker": sticker.toJson(),
    };
  }
  
  @override
  UpdateAnimatedEmojiMessageClicked copyWith({
    int? chatId,
    int? messageId,
    Sticker? sticker,
    dynamic extra,
    int? clientId,
  }) => UpdateAnimatedEmojiMessageClicked(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    sticker: sticker ?? this.sticker,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateAnimatedEmojiMessageClicked';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateAnimationSearchParameters extends Update {

  /// The parameters of animation search through GetOption("animation_search_bot_username") bot has changed
  const UpdateAnimationSearchParameters({
    required this.provider,
    required this.emojis,
    this.extra,
    this.clientId,
  });
  
  /// [provider] Name of the animation search provider 
  final String provider;

  /// [emojis] The new list of emojis suggested for searching
  final List<String> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateAnimationSearchParameters.fromJson(Map<String, dynamic> json) => UpdateAnimationSearchParameters(
    provider: json['provider'],
    emojis: List<String>.from((json['emojis'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "provider": provider,
      "emojis": emojis.map((i) => i).toList(),
    };
  }
  
  @override
  UpdateAnimationSearchParameters copyWith({
    String? provider,
    List<String>? emojis,
    dynamic extra,
    int? clientId,
  }) => UpdateAnimationSearchParameters(
    provider: provider ?? this.provider,
    emojis: emojis ?? this.emojis,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateAnimationSearchParameters';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateSuggestedActions extends Update {

  /// The list of suggested to the user actions has changed
  const UpdateSuggestedActions({
    required this.addedActions,
    required this.removedActions,
    this.extra,
    this.clientId,
  });
  
  /// [addedActions] Added suggested actions 
  final List<SuggestedAction> addedActions;

  /// [removedActions] Removed suggested actions
  final List<SuggestedAction> removedActions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateSuggestedActions.fromJson(Map<String, dynamic> json) => UpdateSuggestedActions(
    addedActions: List<SuggestedAction>.from((json['added_actions'] ?? []).map((item) => SuggestedAction.fromJson(item)).toList()),
    removedActions: List<SuggestedAction>.from((json['removed_actions'] ?? []).map((item) => SuggestedAction.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "added_actions": addedActions.map((i) => i.toJson()).toList(),
      "removed_actions": removedActions.map((i) => i.toJson()).toList(),
    };
  }
  
  @override
  UpdateSuggestedActions copyWith({
    List<SuggestedAction>? addedActions,
    List<SuggestedAction>? removedActions,
    dynamic extra,
    int? clientId,
  }) => UpdateSuggestedActions(
    addedActions: addedActions ?? this.addedActions,
    removedActions: removedActions ?? this.removedActions,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateSuggestedActions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateNewInlineQuery extends Update {

  /// A new incoming inline query; for bots only
  const UpdateNewInlineQuery({
    required this.id,
    required this.senderUserId,
    this.userLocation,
    this.chatType,
    required this.query,
    required this.offset,
    this.extra,
    this.clientId,
  });
  
  /// [id] Unique query identifier 
  final int id;

  /// [senderUserId] Identifier of the user who sent the query 
  final int senderUserId;

  /// [userLocation] User location; may be null
  final Location? userLocation;

  /// [chatType] The type of the chat, from which the query originated; may be null if unknown
  final ChatType? chatType;

  /// [query] Text of the query 
  final String query;

  /// [offset] Offset of the first entry to return
  final String offset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewInlineQuery.fromJson(Map<String, dynamic> json) => UpdateNewInlineQuery(
    id: int.parse(json['id']),
    senderUserId: json['sender_user_id'],
    userLocation: json['user_location'] == null ? null : Location.fromJson(json['user_location']),
    chatType: json['chat_type'] == null ? null : ChatType.fromJson(json['chat_type']),
    query: json['query'],
    offset: json['offset'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "user_location": userLocation?.toJson(),
      "chat_type": chatType?.toJson(),
      "query": query,
      "offset": offset,
    };
  }
  
  @override
  UpdateNewInlineQuery copyWith({
    int? id,
    int? senderUserId,
    Location? userLocation,
    ChatType? chatType,
    String? query,
    String? offset,
    dynamic extra,
    int? clientId,
  }) => UpdateNewInlineQuery(
    id: id ?? this.id,
    senderUserId: senderUserId ?? this.senderUserId,
    userLocation: userLocation ?? this.userLocation,
    chatType: chatType ?? this.chatType,
    query: query ?? this.query,
    offset: offset ?? this.offset,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateNewInlineQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateNewChosenInlineResult extends Update {

  /// The user has chosen a result of an inline query; for bots only
  const UpdateNewChosenInlineResult({
    required this.senderUserId,
    this.userLocation,
    required this.query,
    required this.resultId,
    required this.inlineMessageId,
    this.extra,
    this.clientId,
  });
  
  /// [senderUserId] Identifier of the user who sent the query 
  final int senderUserId;

  /// [userLocation] User location; may be null
  final Location? userLocation;

  /// [query] Text of the query
  final String query;

  /// [resultId] Identifier of the chosen result 
  final String resultId;

  /// [inlineMessageId] Identifier of the sent inline message, if known
  final String inlineMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewChosenInlineResult.fromJson(Map<String, dynamic> json) => UpdateNewChosenInlineResult(
    senderUserId: json['sender_user_id'],
    userLocation: json['user_location'] == null ? null : Location.fromJson(json['user_location']),
    query: json['query'],
    resultId: json['result_id'],
    inlineMessageId: json['inline_message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender_user_id": senderUserId,
      "user_location": userLocation?.toJson(),
      "query": query,
      "result_id": resultId,
      "inline_message_id": inlineMessageId,
    };
  }
  
  @override
  UpdateNewChosenInlineResult copyWith({
    int? senderUserId,
    Location? userLocation,
    String? query,
    String? resultId,
    String? inlineMessageId,
    dynamic extra,
    int? clientId,
  }) => UpdateNewChosenInlineResult(
    senderUserId: senderUserId ?? this.senderUserId,
    userLocation: userLocation ?? this.userLocation,
    query: query ?? this.query,
    resultId: resultId ?? this.resultId,
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateNewChosenInlineResult';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateNewCallbackQuery extends Update {

  /// A new incoming callback query; for bots only
  const UpdateNewCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.chatId,
    required this.messageId,
    required this.chatInstance,
    required this.payload,
    this.extra,
    this.clientId,
  });
  
  /// [id] Unique query identifier 
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [chatId] Identifier of the chat where the query was sent
  final int chatId;

  /// [messageId] Identifier of the message, from which the query originated
  final int messageId;

  /// [chatInstance] Identifier that uniquely corresponds to the chat to which the message was sent
  final int chatInstance;

  /// [payload] Query payload
  final CallbackQueryPayload payload;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewCallbackQuery.fromJson(Map<String, dynamic> json) => UpdateNewCallbackQuery(
    id: int.parse(json['id']),
    senderUserId: json['sender_user_id'],
    chatId: json['chat_id'],
    messageId: json['message_id'],
    chatInstance: int.parse(json['chat_instance']),
    payload: CallbackQueryPayload.fromJson(json['payload']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "chat_id": chatId,
      "message_id": messageId,
      "chat_instance": chatInstance,
      "payload": payload.toJson(),
    };
  }
  
  @override
  UpdateNewCallbackQuery copyWith({
    int? id,
    int? senderUserId,
    int? chatId,
    int? messageId,
    int? chatInstance,
    CallbackQueryPayload? payload,
    dynamic extra,
    int? clientId,
  }) => UpdateNewCallbackQuery(
    id: id ?? this.id,
    senderUserId: senderUserId ?? this.senderUserId,
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    chatInstance: chatInstance ?? this.chatInstance,
    payload: payload ?? this.payload,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateNewCallbackQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateNewInlineCallbackQuery extends Update {

  /// A new incoming callback query from a message sent via a bot; for bots only
  const UpdateNewInlineCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.inlineMessageId,
    required this.chatInstance,
    required this.payload,
    this.extra,
    this.clientId,
  });
  
  /// [id] Unique query identifier 
  final int id;

  /// [senderUserId] Identifier of the user who sent the query 
  final int senderUserId;

  /// [inlineMessageId] Identifier of the inline message, from which the query originated
  final String inlineMessageId;

  /// [chatInstance] An identifier uniquely corresponding to the chat a message was sent to
  final int chatInstance;

  /// [payload] Query payload
  final CallbackQueryPayload payload;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewInlineCallbackQuery.fromJson(Map<String, dynamic> json) => UpdateNewInlineCallbackQuery(
    id: int.parse(json['id']),
    senderUserId: json['sender_user_id'],
    inlineMessageId: json['inline_message_id'],
    chatInstance: int.parse(json['chat_instance']),
    payload: CallbackQueryPayload.fromJson(json['payload']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "inline_message_id": inlineMessageId,
      "chat_instance": chatInstance,
      "payload": payload.toJson(),
    };
  }
  
  @override
  UpdateNewInlineCallbackQuery copyWith({
    int? id,
    int? senderUserId,
    String? inlineMessageId,
    int? chatInstance,
    CallbackQueryPayload? payload,
    dynamic extra,
    int? clientId,
  }) => UpdateNewInlineCallbackQuery(
    id: id ?? this.id,
    senderUserId: senderUserId ?? this.senderUserId,
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    chatInstance: chatInstance ?? this.chatInstance,
    payload: payload ?? this.payload,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateNewInlineCallbackQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateNewShippingQuery extends Update {

  /// A new incoming shipping query; for bots only. Only for invoices with flexible price
  const UpdateNewShippingQuery({
    required this.id,
    required this.senderUserId,
    required this.invoicePayload,
    required this.shippingAddress,
    this.extra,
    this.clientId,
  });
  
  /// [id] Unique query identifier 
  final int id;

  /// [senderUserId] Identifier of the user who sent the query 
  final int senderUserId;

  /// [invoicePayload] Invoice payload 
  final String invoicePayload;

  /// [shippingAddress] User shipping address
  final Address shippingAddress;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewShippingQuery.fromJson(Map<String, dynamic> json) => UpdateNewShippingQuery(
    id: int.parse(json['id']),
    senderUserId: json['sender_user_id'],
    invoicePayload: json['invoice_payload'],
    shippingAddress: Address.fromJson(json['shipping_address']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "invoice_payload": invoicePayload,
      "shipping_address": shippingAddress.toJson(),
    };
  }
  
  @override
  UpdateNewShippingQuery copyWith({
    int? id,
    int? senderUserId,
    String? invoicePayload,
    Address? shippingAddress,
    dynamic extra,
    int? clientId,
  }) => UpdateNewShippingQuery(
    id: id ?? this.id,
    senderUserId: senderUserId ?? this.senderUserId,
    invoicePayload: invoicePayload ?? this.invoicePayload,
    shippingAddress: shippingAddress ?? this.shippingAddress,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateNewShippingQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateNewPreCheckoutQuery extends Update {

  /// A new incoming pre-checkout query; for bots only. Contains full information about a checkout
  const UpdateNewPreCheckoutQuery({
    required this.id,
    required this.senderUserId,
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    required this.shippingOptionId,
    this.orderInfo,
    this.extra,
    this.clientId,
  });
  
  /// [id] Unique query identifier 
  final int id;

  /// [senderUserId] Identifier of the user who sent the query 
  final int senderUserId;

  /// [currency] Currency for the product price 
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the currency
  final int totalAmount;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [shippingOptionId] Identifier of a shipping option chosen by the user; may be empty if not applicable 
  final String shippingOptionId;

  /// [orderInfo] Information about the order; may be null
  final OrderInfo? orderInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewPreCheckoutQuery.fromJson(Map<String, dynamic> json) => UpdateNewPreCheckoutQuery(
    id: int.parse(json['id']),
    senderUserId: json['sender_user_id'],
    currency: json['currency'],
    totalAmount: json['total_amount'],
    invoicePayload: json['invoice_payload'],
    shippingOptionId: json['shipping_option_id'],
    orderInfo: json['order_info'] == null ? null : OrderInfo.fromJson(json['order_info']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "currency": currency,
      "total_amount": totalAmount,
      "invoice_payload": invoicePayload,
      "shipping_option_id": shippingOptionId,
      "order_info": orderInfo?.toJson(),
    };
  }
  
  @override
  UpdateNewPreCheckoutQuery copyWith({
    int? id,
    int? senderUserId,
    String? currency,
    int? totalAmount,
    String? invoicePayload,
    String? shippingOptionId,
    OrderInfo? orderInfo,
    dynamic extra,
    int? clientId,
  }) => UpdateNewPreCheckoutQuery(
    id: id ?? this.id,
    senderUserId: senderUserId ?? this.senderUserId,
    currency: currency ?? this.currency,
    totalAmount: totalAmount ?? this.totalAmount,
    invoicePayload: invoicePayload ?? this.invoicePayload,
    shippingOptionId: shippingOptionId ?? this.shippingOptionId,
    orderInfo: orderInfo ?? this.orderInfo,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateNewPreCheckoutQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateNewCustomEvent extends Update {

  /// A new incoming event; for bots only
  const UpdateNewCustomEvent({
    required this.event,
    this.extra,
    this.clientId,
  });
  
  /// [event] A JSON-serialized event
  final String event;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewCustomEvent.fromJson(Map<String, dynamic> json) => UpdateNewCustomEvent(
    event: json['event'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "event": event,
    };
  }
  
  @override
  UpdateNewCustomEvent copyWith({
    String? event,
    dynamic extra,
    int? clientId,
  }) => UpdateNewCustomEvent(
    event: event ?? this.event,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateNewCustomEvent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateNewCustomQuery extends Update {

  /// A new incoming query; for bots only
  const UpdateNewCustomQuery({
    required this.id,
    required this.data,
    required this.timeout,
    this.extra,
    this.clientId,
  });
  
  /// [id] The query identifier 
  final int id;

  /// [data] JSON-serialized query data 
  final String data;

  /// [timeout] Query timeout
  final int timeout;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewCustomQuery.fromJson(Map<String, dynamic> json) => UpdateNewCustomQuery(
    id: int.parse(json['id']),
    data: json['data'],
    timeout: json['timeout'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "data": data,
      "timeout": timeout,
    };
  }
  
  @override
  UpdateNewCustomQuery copyWith({
    int? id,
    String? data,
    int? timeout,
    dynamic extra,
    int? clientId,
  }) => UpdateNewCustomQuery(
    id: id ?? this.id,
    data: data ?? this.data,
    timeout: timeout ?? this.timeout,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateNewCustomQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdatePoll extends Update {

  /// A poll was updated; for bots only
  const UpdatePoll({
    required this.poll,
    this.extra,
    this.clientId,
  });
  
  /// [poll] New data about the poll
  final Poll poll;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdatePoll.fromJson(Map<String, dynamic> json) => UpdatePoll(
    poll: Poll.fromJson(json['poll']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "poll": poll.toJson(),
    };
  }
  
  @override
  UpdatePoll copyWith({
    Poll? poll,
    dynamic extra,
    int? clientId,
  }) => UpdatePoll(
    poll: poll ?? this.poll,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updatePoll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdatePollAnswer extends Update {

  /// A user changed the answer to a poll; for bots only
  const UpdatePollAnswer({
    required this.pollId,
    required this.userId,
    required this.optionIds,
    this.extra,
    this.clientId,
  });
  
  /// [pollId] Unique poll identifier 
  final int pollId;

  /// [userId] The user, who changed the answer to the poll 
  final int userId;

  /// [optionIds] 0-based identifiers of answer options, chosen by the user
  final List<int> optionIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdatePollAnswer.fromJson(Map<String, dynamic> json) => UpdatePollAnswer(
    pollId: int.parse(json['poll_id']),
    userId: json['user_id'],
    optionIds: List<int>.from((json['option_ids'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "poll_id": pollId,
      "user_id": userId,
      "option_ids": optionIds.map((i) => i).toList(),
    };
  }
  
  @override
  UpdatePollAnswer copyWith({
    int? pollId,
    int? userId,
    List<int>? optionIds,
    dynamic extra,
    int? clientId,
  }) => UpdatePollAnswer(
    pollId: pollId ?? this.pollId,
    userId: userId ?? this.userId,
    optionIds: optionIds ?? this.optionIds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updatePollAnswer';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateChatMember extends Update {

  /// User rights changed in a chat; for bots only
  const UpdateChatMember({
    required this.chatId,
    required this.actorUserId,
    required this.date,
    this.inviteLink,
    required this.oldChatMember,
    required this.newChatMember,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [actorUserId] Identifier of the user, changing the rights
  final int actorUserId;

  /// [date] Point in time (Unix timestamp) when the user rights was changed
  final int date;

  /// [inviteLink] If user has joined the chat using an invite link, the invite link; may be null
  final ChatInviteLink? inviteLink;

  /// [oldChatMember] Previous chat member
  final ChatMember oldChatMember;

  /// [newChatMember] New chat member
  final ChatMember newChatMember;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateChatMember.fromJson(Map<String, dynamic> json) => UpdateChatMember(
    chatId: json['chat_id'],
    actorUserId: json['actor_user_id'],
    date: json['date'],
    inviteLink: json['invite_link'] == null ? null : ChatInviteLink.fromJson(json['invite_link']),
    oldChatMember: ChatMember.fromJson(json['old_chat_member']),
    newChatMember: ChatMember.fromJson(json['new_chat_member']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "actor_user_id": actorUserId,
      "date": date,
      "invite_link": inviteLink?.toJson(),
      "old_chat_member": oldChatMember.toJson(),
      "new_chat_member": newChatMember.toJson(),
    };
  }
  
  @override
  UpdateChatMember copyWith({
    int? chatId,
    int? actorUserId,
    int? date,
    ChatInviteLink? inviteLink,
    ChatMember? oldChatMember,
    ChatMember? newChatMember,
    dynamic extra,
    int? clientId,
  }) => UpdateChatMember(
    chatId: chatId ?? this.chatId,
    actorUserId: actorUserId ?? this.actorUserId,
    date: date ?? this.date,
    inviteLink: inviteLink ?? this.inviteLink,
    oldChatMember: oldChatMember ?? this.oldChatMember,
    newChatMember: newChatMember ?? this.newChatMember,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateChatMember';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UpdateNewChatJoinRequest extends Update {

  /// A user sent a join request to a chat; for bots only
  const UpdateNewChatJoinRequest({
    required this.chatId,
    required this.request,
    this.inviteLink,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [request] Join request 
  final ChatJoinRequest request;

  /// [inviteLink] The invite link, which was used to send join request; may be null
  final ChatInviteLink? inviteLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UpdateNewChatJoinRequest.fromJson(Map<String, dynamic> json) => UpdateNewChatJoinRequest(
    chatId: json['chat_id'],
    request: ChatJoinRequest.fromJson(json['request']),
    inviteLink: json['invite_link'] == null ? null : ChatInviteLink.fromJson(json['invite_link']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "request": request.toJson(),
      "invite_link": inviteLink?.toJson(),
    };
  }
  
  @override
  UpdateNewChatJoinRequest copyWith({
    int? chatId,
    ChatJoinRequest? request,
    ChatInviteLink? inviteLink,
    dynamic extra,
    int? clientId,
  }) => UpdateNewChatJoinRequest(
    chatId: chatId ?? this.chatId,
    request: request ?? this.request,
    inviteLink: inviteLink ?? this.inviteLink,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updateNewChatJoinRequest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
