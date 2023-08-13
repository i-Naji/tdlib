part of '../tdapi.dart';

class ChatEventAction extends TdObject {
  /// Represents a chat event
  const ChatEventAction();

  /// a ChatEventAction return type can be :
  /// * [ChatEventMessageEdited]
  /// * [ChatEventMessageDeleted]
  /// * [ChatEventMessagePinned]
  /// * [ChatEventMessageUnpinned]
  /// * [ChatEventPollStopped]
  /// * [ChatEventMemberJoined]
  /// * [ChatEventMemberJoinedByInviteLink]
  /// * [ChatEventMemberJoinedByRequest]
  /// * [ChatEventMemberInvited]
  /// * [ChatEventMemberLeft]
  /// * [ChatEventMemberPromoted]
  /// * [ChatEventMemberRestricted]
  /// * [ChatEventAvailableReactionsChanged]
  /// * [ChatEventDescriptionChanged]
  /// * [ChatEventLinkedChatChanged]
  /// * [ChatEventLocationChanged]
  /// * [ChatEventMessageAutoDeleteTimeChanged]
  /// * [ChatEventPermissionsChanged]
  /// * [ChatEventPhotoChanged]
  /// * [ChatEventSlowModeDelayChanged]
  /// * [ChatEventStickerSetChanged]
  /// * [ChatEventTitleChanged]
  /// * [ChatEventUsernameChanged]
  /// * [ChatEventActiveUsernamesChanged]
  /// * [ChatEventHasProtectedContentToggled]
  /// * [ChatEventInvitesToggled]
  /// * [ChatEventIsAllHistoryAvailableToggled]
  /// * [ChatEventHasAggressiveAntiSpamEnabledToggled]
  /// * [ChatEventSignMessagesToggled]
  /// * [ChatEventInviteLinkEdited]
  /// * [ChatEventInviteLinkRevoked]
  /// * [ChatEventInviteLinkDeleted]
  /// * [ChatEventVideoChatCreated]
  /// * [ChatEventVideoChatEnded]
  /// * [ChatEventVideoChatMuteNewParticipantsToggled]
  /// * [ChatEventVideoChatParticipantIsMutedToggled]
  /// * [ChatEventVideoChatParticipantVolumeLevelChanged]
  /// * [ChatEventIsForumToggled]
  /// * [ChatEventForumTopicCreated]
  /// * [ChatEventForumTopicEdited]
  /// * [ChatEventForumTopicToggleIsClosed]
  /// * [ChatEventForumTopicToggleIsHidden]
  /// * [ChatEventForumTopicDeleted]
  /// * [ChatEventForumTopicPinned]
  factory ChatEventAction.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatEventMessageEdited.CONSTRUCTOR:
        return ChatEventMessageEdited.fromJson(json);
      case ChatEventMessageDeleted.CONSTRUCTOR:
        return ChatEventMessageDeleted.fromJson(json);
      case ChatEventMessagePinned.CONSTRUCTOR:
        return ChatEventMessagePinned.fromJson(json);
      case ChatEventMessageUnpinned.CONSTRUCTOR:
        return ChatEventMessageUnpinned.fromJson(json);
      case ChatEventPollStopped.CONSTRUCTOR:
        return ChatEventPollStopped.fromJson(json);
      case ChatEventMemberJoined.CONSTRUCTOR:
        return ChatEventMemberJoined.fromJson(json);
      case ChatEventMemberJoinedByInviteLink.CONSTRUCTOR:
        return ChatEventMemberJoinedByInviteLink.fromJson(json);
      case ChatEventMemberJoinedByRequest.CONSTRUCTOR:
        return ChatEventMemberJoinedByRequest.fromJson(json);
      case ChatEventMemberInvited.CONSTRUCTOR:
        return ChatEventMemberInvited.fromJson(json);
      case ChatEventMemberLeft.CONSTRUCTOR:
        return ChatEventMemberLeft.fromJson(json);
      case ChatEventMemberPromoted.CONSTRUCTOR:
        return ChatEventMemberPromoted.fromJson(json);
      case ChatEventMemberRestricted.CONSTRUCTOR:
        return ChatEventMemberRestricted.fromJson(json);
      case ChatEventAvailableReactionsChanged.CONSTRUCTOR:
        return ChatEventAvailableReactionsChanged.fromJson(json);
      case ChatEventDescriptionChanged.CONSTRUCTOR:
        return ChatEventDescriptionChanged.fromJson(json);
      case ChatEventLinkedChatChanged.CONSTRUCTOR:
        return ChatEventLinkedChatChanged.fromJson(json);
      case ChatEventLocationChanged.CONSTRUCTOR:
        return ChatEventLocationChanged.fromJson(json);
      case ChatEventMessageAutoDeleteTimeChanged.CONSTRUCTOR:
        return ChatEventMessageAutoDeleteTimeChanged.fromJson(json);
      case ChatEventPermissionsChanged.CONSTRUCTOR:
        return ChatEventPermissionsChanged.fromJson(json);
      case ChatEventPhotoChanged.CONSTRUCTOR:
        return ChatEventPhotoChanged.fromJson(json);
      case ChatEventSlowModeDelayChanged.CONSTRUCTOR:
        return ChatEventSlowModeDelayChanged.fromJson(json);
      case ChatEventStickerSetChanged.CONSTRUCTOR:
        return ChatEventStickerSetChanged.fromJson(json);
      case ChatEventTitleChanged.CONSTRUCTOR:
        return ChatEventTitleChanged.fromJson(json);
      case ChatEventUsernameChanged.CONSTRUCTOR:
        return ChatEventUsernameChanged.fromJson(json);
      case ChatEventActiveUsernamesChanged.CONSTRUCTOR:
        return ChatEventActiveUsernamesChanged.fromJson(json);
      case ChatEventHasProtectedContentToggled.CONSTRUCTOR:
        return ChatEventHasProtectedContentToggled.fromJson(json);
      case ChatEventInvitesToggled.CONSTRUCTOR:
        return ChatEventInvitesToggled.fromJson(json);
      case ChatEventIsAllHistoryAvailableToggled.CONSTRUCTOR:
        return ChatEventIsAllHistoryAvailableToggled.fromJson(json);
      case ChatEventHasAggressiveAntiSpamEnabledToggled.CONSTRUCTOR:
        return ChatEventHasAggressiveAntiSpamEnabledToggled.fromJson(json);
      case ChatEventSignMessagesToggled.CONSTRUCTOR:
        return ChatEventSignMessagesToggled.fromJson(json);
      case ChatEventInviteLinkEdited.CONSTRUCTOR:
        return ChatEventInviteLinkEdited.fromJson(json);
      case ChatEventInviteLinkRevoked.CONSTRUCTOR:
        return ChatEventInviteLinkRevoked.fromJson(json);
      case ChatEventInviteLinkDeleted.CONSTRUCTOR:
        return ChatEventInviteLinkDeleted.fromJson(json);
      case ChatEventVideoChatCreated.CONSTRUCTOR:
        return ChatEventVideoChatCreated.fromJson(json);
      case ChatEventVideoChatEnded.CONSTRUCTOR:
        return ChatEventVideoChatEnded.fromJson(json);
      case ChatEventVideoChatMuteNewParticipantsToggled.CONSTRUCTOR:
        return ChatEventVideoChatMuteNewParticipantsToggled.fromJson(json);
      case ChatEventVideoChatParticipantIsMutedToggled.CONSTRUCTOR:
        return ChatEventVideoChatParticipantIsMutedToggled.fromJson(json);
      case ChatEventVideoChatParticipantVolumeLevelChanged.CONSTRUCTOR:
        return ChatEventVideoChatParticipantVolumeLevelChanged.fromJson(json);
      case ChatEventIsForumToggled.CONSTRUCTOR:
        return ChatEventIsForumToggled.fromJson(json);
      case ChatEventForumTopicCreated.CONSTRUCTOR:
        return ChatEventForumTopicCreated.fromJson(json);
      case ChatEventForumTopicEdited.CONSTRUCTOR:
        return ChatEventForumTopicEdited.fromJson(json);
      case ChatEventForumTopicToggleIsClosed.CONSTRUCTOR:
        return ChatEventForumTopicToggleIsClosed.fromJson(json);
      case ChatEventForumTopicToggleIsHidden.CONSTRUCTOR:
        return ChatEventForumTopicToggleIsHidden.fromJson(json);
      case ChatEventForumTopicDeleted.CONSTRUCTOR:
        return ChatEventForumTopicDeleted.fromJson(json);
      case ChatEventForumTopicPinned.CONSTRUCTOR:
        return ChatEventForumTopicPinned.fromJson(json);
      default:
        return const ChatEventAction();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  ChatEventAction copyWith() => const ChatEventAction();

  static const CONSTRUCTOR = 'chatEventAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageEdited extends ChatEventAction {
  /// A message was edited
  const ChatEventMessageEdited({
    required this.oldMessage,
    required this.newMessage,
  });

  /// [oldMessage] The original message before the edit
  final Message oldMessage;

  /// [newMessage] The message after it was edited
  final Message newMessage;

  /// Parse from a json
  factory ChatEventMessageEdited.fromJson(Map<String, dynamic> json) =>
      ChatEventMessageEdited(
        oldMessage: Message.fromJson(json['old_message']),
        newMessage: Message.fromJson(json['new_message']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_message": oldMessage.toJson(),
      "new_message": newMessage.toJson(),
    };
  }

  @override
  ChatEventMessageEdited copyWith({
    Message? oldMessage,
    Message? newMessage,
  }) =>
      ChatEventMessageEdited(
        oldMessage: oldMessage ?? this.oldMessage,
        newMessage: newMessage ?? this.newMessage,
      );

  static const CONSTRUCTOR = 'chatEventMessageEdited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageDeleted extends ChatEventAction {
  /// A message was deleted
  const ChatEventMessageDeleted({
    required this.message,
    required this.canReportAntiSpamFalsePositive,
  });

  /// [message] Deleted message
  final Message message;

  /// [canReportAntiSpamFalsePositive] True, if the message deletion can be reported via reportSupergroupAntiSpamFalsePositive
  final bool canReportAntiSpamFalsePositive;

  /// Parse from a json
  factory ChatEventMessageDeleted.fromJson(Map<String, dynamic> json) =>
      ChatEventMessageDeleted(
        message: Message.fromJson(json['message']),
        canReportAntiSpamFalsePositive:
            json['can_report_anti_spam_false_positive'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
      "can_report_anti_spam_false_positive": canReportAntiSpamFalsePositive,
    };
  }

  @override
  ChatEventMessageDeleted copyWith({
    Message? message,
    bool? canReportAntiSpamFalsePositive,
  }) =>
      ChatEventMessageDeleted(
        message: message ?? this.message,
        canReportAntiSpamFalsePositive: canReportAntiSpamFalsePositive ??
            this.canReportAntiSpamFalsePositive,
      );

  static const CONSTRUCTOR = 'chatEventMessageDeleted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessagePinned extends ChatEventAction {
  /// A message was pinned
  const ChatEventMessagePinned({
    required this.message,
  });

  /// [message] Pinned message
  final Message message;

  /// Parse from a json
  factory ChatEventMessagePinned.fromJson(Map<String, dynamic> json) =>
      ChatEventMessagePinned(
        message: Message.fromJson(json['message']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
    };
  }

  @override
  ChatEventMessagePinned copyWith({
    Message? message,
  }) =>
      ChatEventMessagePinned(
        message: message ?? this.message,
      );

  static const CONSTRUCTOR = 'chatEventMessagePinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageUnpinned extends ChatEventAction {
  /// A message was unpinned
  const ChatEventMessageUnpinned({
    required this.message,
  });

  /// [message] Unpinned message
  final Message message;

  /// Parse from a json
  factory ChatEventMessageUnpinned.fromJson(Map<String, dynamic> json) =>
      ChatEventMessageUnpinned(
        message: Message.fromJson(json['message']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
    };
  }

  @override
  ChatEventMessageUnpinned copyWith({
    Message? message,
  }) =>
      ChatEventMessageUnpinned(
        message: message ?? this.message,
      );

  static const CONSTRUCTOR = 'chatEventMessageUnpinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventPollStopped extends ChatEventAction {
  /// A poll in a message was stopped
  const ChatEventPollStopped({
    required this.message,
  });

  /// [message] The message with the poll
  final Message message;

  /// Parse from a json
  factory ChatEventPollStopped.fromJson(Map<String, dynamic> json) =>
      ChatEventPollStopped(
        message: Message.fromJson(json['message']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
    };
  }

  @override
  ChatEventPollStopped copyWith({
    Message? message,
  }) =>
      ChatEventPollStopped(
        message: message ?? this.message,
      );

  static const CONSTRUCTOR = 'chatEventPollStopped';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberJoined extends ChatEventAction {
  /// A new member joined the chat
  const ChatEventMemberJoined();

  /// Parse from a json
  factory ChatEventMemberJoined.fromJson(Map<String, dynamic> json) =>
      const ChatEventMemberJoined();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ChatEventMemberJoined copyWith() => const ChatEventMemberJoined();

  static const CONSTRUCTOR = 'chatEventMemberJoined';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberJoinedByInviteLink extends ChatEventAction {
  /// A new member joined the chat via an invite link
  const ChatEventMemberJoinedByInviteLink({
    required this.inviteLink,
    required this.viaChatFolderInviteLink,
  });

  /// [inviteLink] Invite link used to join the chat
  final ChatInviteLink inviteLink;

  /// [viaChatFolderInviteLink] True, if the user has joined the chat using an invite link for a chat folder
  final bool viaChatFolderInviteLink;

  /// Parse from a json
  factory ChatEventMemberJoinedByInviteLink.fromJson(
          Map<String, dynamic> json) =>
      ChatEventMemberJoinedByInviteLink(
        inviteLink: ChatInviteLink.fromJson(json['invite_link']),
        viaChatFolderInviteLink: json['via_chat_folder_invite_link'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink.toJson(),
      "via_chat_folder_invite_link": viaChatFolderInviteLink,
    };
  }

  @override
  ChatEventMemberJoinedByInviteLink copyWith({
    ChatInviteLink? inviteLink,
    bool? viaChatFolderInviteLink,
  }) =>
      ChatEventMemberJoinedByInviteLink(
        inviteLink: inviteLink ?? this.inviteLink,
        viaChatFolderInviteLink:
            viaChatFolderInviteLink ?? this.viaChatFolderInviteLink,
      );

  static const CONSTRUCTOR = 'chatEventMemberJoinedByInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberJoinedByRequest extends ChatEventAction {
  /// A new member was accepted to the chat by an administrator
  const ChatEventMemberJoinedByRequest({
    required this.approverUserId,
    this.inviteLink,
  });

  /// [approverUserId] User identifier of the chat administrator, approved user join request
  final int approverUserId;

  /// [inviteLink] Invite link used to join the chat; may be null
  final ChatInviteLink? inviteLink;

  /// Parse from a json
  factory ChatEventMemberJoinedByRequest.fromJson(Map<String, dynamic> json) =>
      ChatEventMemberJoinedByRequest(
        approverUserId: json['approver_user_id'],
        inviteLink: json['invite_link'] == null
            ? null
            : ChatInviteLink.fromJson(json['invite_link']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "approver_user_id": approverUserId,
      "invite_link": inviteLink?.toJson(),
    };
  }

  @override
  ChatEventMemberJoinedByRequest copyWith({
    int? approverUserId,
    ChatInviteLink? inviteLink,
  }) =>
      ChatEventMemberJoinedByRequest(
        approverUserId: approverUserId ?? this.approverUserId,
        inviteLink: inviteLink ?? this.inviteLink,
      );

  static const CONSTRUCTOR = 'chatEventMemberJoinedByRequest';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberInvited extends ChatEventAction {
  /// A new chat member was invited
  const ChatEventMemberInvited({
    required this.userId,
    required this.status,
  });

  /// [userId] New member user identifier
  final int userId;

  /// [status] New member status
  final ChatMemberStatus status;

  /// Parse from a json
  factory ChatEventMemberInvited.fromJson(Map<String, dynamic> json) =>
      ChatEventMemberInvited(
        userId: json['user_id'],
        status: ChatMemberStatus.fromJson(json['status']),
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
  ChatEventMemberInvited copyWith({
    int? userId,
    ChatMemberStatus? status,
  }) =>
      ChatEventMemberInvited(
        userId: userId ?? this.userId,
        status: status ?? this.status,
      );

  static const CONSTRUCTOR = 'chatEventMemberInvited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberLeft extends ChatEventAction {
  /// A member left the chat
  const ChatEventMemberLeft();

  /// Parse from a json
  factory ChatEventMemberLeft.fromJson(Map<String, dynamic> json) =>
      const ChatEventMemberLeft();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ChatEventMemberLeft copyWith() => const ChatEventMemberLeft();

  static const CONSTRUCTOR = 'chatEventMemberLeft';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberPromoted extends ChatEventAction {
  /// A chat member has gained/lost administrator status, or the list of their administrator privileges has changed
  const ChatEventMemberPromoted({
    required this.userId,
    required this.oldStatus,
    required this.newStatus,
  });

  /// [userId] Affected chat member user identifier
  final int userId;

  /// [oldStatus] Previous status of the chat member
  final ChatMemberStatus oldStatus;

  /// [newStatus] New status of the chat member
  final ChatMemberStatus newStatus;

  /// Parse from a json
  factory ChatEventMemberPromoted.fromJson(Map<String, dynamic> json) =>
      ChatEventMemberPromoted(
        userId: json['user_id'],
        oldStatus: ChatMemberStatus.fromJson(json['old_status']),
        newStatus: ChatMemberStatus.fromJson(json['new_status']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "old_status": oldStatus.toJson(),
      "new_status": newStatus.toJson(),
    };
  }

  @override
  ChatEventMemberPromoted copyWith({
    int? userId,
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
  }) =>
      ChatEventMemberPromoted(
        userId: userId ?? this.userId,
        oldStatus: oldStatus ?? this.oldStatus,
        newStatus: newStatus ?? this.newStatus,
      );

  static const CONSTRUCTOR = 'chatEventMemberPromoted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberRestricted extends ChatEventAction {
  /// A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed
  const ChatEventMemberRestricted({
    required this.memberId,
    required this.oldStatus,
    required this.newStatus,
  });

  /// [memberId] Affected chat member identifier
  final MessageSender memberId;

  /// [oldStatus] Previous status of the chat member
  final ChatMemberStatus oldStatus;

  /// [newStatus] New status of the chat member
  final ChatMemberStatus newStatus;

  /// Parse from a json
  factory ChatEventMemberRestricted.fromJson(Map<String, dynamic> json) =>
      ChatEventMemberRestricted(
        memberId: MessageSender.fromJson(json['member_id']),
        oldStatus: ChatMemberStatus.fromJson(json['old_status']),
        newStatus: ChatMemberStatus.fromJson(json['new_status']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "member_id": memberId.toJson(),
      "old_status": oldStatus.toJson(),
      "new_status": newStatus.toJson(),
    };
  }

  @override
  ChatEventMemberRestricted copyWith({
    MessageSender? memberId,
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
  }) =>
      ChatEventMemberRestricted(
        memberId: memberId ?? this.memberId,
        oldStatus: oldStatus ?? this.oldStatus,
        newStatus: newStatus ?? this.newStatus,
      );

  static const CONSTRUCTOR = 'chatEventMemberRestricted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventAvailableReactionsChanged extends ChatEventAction {
  /// The chat available reactions were changed
  const ChatEventAvailableReactionsChanged({
    required this.oldAvailableReactions,
    required this.newAvailableReactions,
  });

  /// [oldAvailableReactions] Previous chat available reactions
  final ChatAvailableReactions oldAvailableReactions;

  /// [newAvailableReactions] New chat available reactions
  final ChatAvailableReactions newAvailableReactions;

  /// Parse from a json
  factory ChatEventAvailableReactionsChanged.fromJson(
          Map<String, dynamic> json) =>
      ChatEventAvailableReactionsChanged(
        oldAvailableReactions:
            ChatAvailableReactions.fromJson(json['old_available_reactions']),
        newAvailableReactions:
            ChatAvailableReactions.fromJson(json['new_available_reactions']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_available_reactions": oldAvailableReactions.toJson(),
      "new_available_reactions": newAvailableReactions.toJson(),
    };
  }

  @override
  ChatEventAvailableReactionsChanged copyWith({
    ChatAvailableReactions? oldAvailableReactions,
    ChatAvailableReactions? newAvailableReactions,
  }) =>
      ChatEventAvailableReactionsChanged(
        oldAvailableReactions:
            oldAvailableReactions ?? this.oldAvailableReactions,
        newAvailableReactions:
            newAvailableReactions ?? this.newAvailableReactions,
      );

  static const CONSTRUCTOR = 'chatEventAvailableReactionsChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventDescriptionChanged extends ChatEventAction {
  /// The chat description was changed
  const ChatEventDescriptionChanged({
    required this.oldDescription,
    required this.newDescription,
  });

  /// [oldDescription] Previous chat description
  final String oldDescription;

  /// [newDescription] New chat description
  final String newDescription;

  /// Parse from a json
  factory ChatEventDescriptionChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventDescriptionChanged(
        oldDescription: json['old_description'],
        newDescription: json['new_description'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_description": oldDescription,
      "new_description": newDescription,
    };
  }

  @override
  ChatEventDescriptionChanged copyWith({
    String? oldDescription,
    String? newDescription,
  }) =>
      ChatEventDescriptionChanged(
        oldDescription: oldDescription ?? this.oldDescription,
        newDescription: newDescription ?? this.newDescription,
      );

  static const CONSTRUCTOR = 'chatEventDescriptionChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventLinkedChatChanged extends ChatEventAction {
  /// The linked chat of a supergroup was changed
  const ChatEventLinkedChatChanged({
    required this.oldLinkedChatId,
    required this.newLinkedChatId,
  });

  /// [oldLinkedChatId] Previous supergroup linked chat identifier
  final int oldLinkedChatId;

  /// [newLinkedChatId] New supergroup linked chat identifier
  final int newLinkedChatId;

  /// Parse from a json
  factory ChatEventLinkedChatChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventLinkedChatChanged(
        oldLinkedChatId: json['old_linked_chat_id'],
        newLinkedChatId: json['new_linked_chat_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_linked_chat_id": oldLinkedChatId,
      "new_linked_chat_id": newLinkedChatId,
    };
  }

  @override
  ChatEventLinkedChatChanged copyWith({
    int? oldLinkedChatId,
    int? newLinkedChatId,
  }) =>
      ChatEventLinkedChatChanged(
        oldLinkedChatId: oldLinkedChatId ?? this.oldLinkedChatId,
        newLinkedChatId: newLinkedChatId ?? this.newLinkedChatId,
      );

  static const CONSTRUCTOR = 'chatEventLinkedChatChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventLocationChanged extends ChatEventAction {
  /// The supergroup location was changed
  const ChatEventLocationChanged({
    this.oldLocation,
    this.newLocation,
  });

  /// [oldLocation] Previous location; may be null
  final ChatLocation? oldLocation;

  /// [newLocation] New location; may be null
  final ChatLocation? newLocation;

  /// Parse from a json
  factory ChatEventLocationChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventLocationChanged(
        oldLocation: json['old_location'] == null
            ? null
            : ChatLocation.fromJson(json['old_location']),
        newLocation: json['new_location'] == null
            ? null
            : ChatLocation.fromJson(json['new_location']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_location": oldLocation?.toJson(),
      "new_location": newLocation?.toJson(),
    };
  }

  @override
  ChatEventLocationChanged copyWith({
    ChatLocation? oldLocation,
    ChatLocation? newLocation,
  }) =>
      ChatEventLocationChanged(
        oldLocation: oldLocation ?? this.oldLocation,
        newLocation: newLocation ?? this.newLocation,
      );

  static const CONSTRUCTOR = 'chatEventLocationChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageAutoDeleteTimeChanged extends ChatEventAction {
  /// The message auto-delete timer was changed
  const ChatEventMessageAutoDeleteTimeChanged({
    required this.oldMessageAutoDeleteTime,
    required this.newMessageAutoDeleteTime,
  });

  /// [oldMessageAutoDeleteTime] Previous value of message_auto_delete_time
  final int oldMessageAutoDeleteTime;

  /// [newMessageAutoDeleteTime] New value of message_auto_delete_time
  final int newMessageAutoDeleteTime;

  /// Parse from a json
  factory ChatEventMessageAutoDeleteTimeChanged.fromJson(
          Map<String, dynamic> json) =>
      ChatEventMessageAutoDeleteTimeChanged(
        oldMessageAutoDeleteTime: json['old_message_auto_delete_time'],
        newMessageAutoDeleteTime: json['new_message_auto_delete_time'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_message_auto_delete_time": oldMessageAutoDeleteTime,
      "new_message_auto_delete_time": newMessageAutoDeleteTime,
    };
  }

  @override
  ChatEventMessageAutoDeleteTimeChanged copyWith({
    int? oldMessageAutoDeleteTime,
    int? newMessageAutoDeleteTime,
  }) =>
      ChatEventMessageAutoDeleteTimeChanged(
        oldMessageAutoDeleteTime:
            oldMessageAutoDeleteTime ?? this.oldMessageAutoDeleteTime,
        newMessageAutoDeleteTime:
            newMessageAutoDeleteTime ?? this.newMessageAutoDeleteTime,
      );

  static const CONSTRUCTOR = 'chatEventMessageAutoDeleteTimeChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventPermissionsChanged extends ChatEventAction {
  /// The chat permissions was changed
  const ChatEventPermissionsChanged({
    required this.oldPermissions,
    required this.newPermissions,
  });

  /// [oldPermissions] Previous chat permissions
  final ChatPermissions oldPermissions;

  /// [newPermissions] New chat permissions
  final ChatPermissions newPermissions;

  /// Parse from a json
  factory ChatEventPermissionsChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventPermissionsChanged(
        oldPermissions: ChatPermissions.fromJson(json['old_permissions']),
        newPermissions: ChatPermissions.fromJson(json['new_permissions']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_permissions": oldPermissions.toJson(),
      "new_permissions": newPermissions.toJson(),
    };
  }

  @override
  ChatEventPermissionsChanged copyWith({
    ChatPermissions? oldPermissions,
    ChatPermissions? newPermissions,
  }) =>
      ChatEventPermissionsChanged(
        oldPermissions: oldPermissions ?? this.oldPermissions,
        newPermissions: newPermissions ?? this.newPermissions,
      );

  static const CONSTRUCTOR = 'chatEventPermissionsChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventPhotoChanged extends ChatEventAction {
  /// The chat photo was changed
  const ChatEventPhotoChanged({
    this.oldPhoto,
    this.newPhoto,
  });

  /// [oldPhoto] Previous chat photo value; may be null
  final ChatPhoto? oldPhoto;

  /// [newPhoto] New chat photo value; may be null
  final ChatPhoto? newPhoto;

  /// Parse from a json
  factory ChatEventPhotoChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventPhotoChanged(
        oldPhoto: json['old_photo'] == null
            ? null
            : ChatPhoto.fromJson(json['old_photo']),
        newPhoto: json['new_photo'] == null
            ? null
            : ChatPhoto.fromJson(json['new_photo']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_photo": oldPhoto?.toJson(),
      "new_photo": newPhoto?.toJson(),
    };
  }

  @override
  ChatEventPhotoChanged copyWith({
    ChatPhoto? oldPhoto,
    ChatPhoto? newPhoto,
  }) =>
      ChatEventPhotoChanged(
        oldPhoto: oldPhoto ?? this.oldPhoto,
        newPhoto: newPhoto ?? this.newPhoto,
      );

  static const CONSTRUCTOR = 'chatEventPhotoChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventSlowModeDelayChanged extends ChatEventAction {
  /// The slow_mode_delay setting of a supergroup was changed
  const ChatEventSlowModeDelayChanged({
    required this.oldSlowModeDelay,
    required this.newSlowModeDelay,
  });

  /// [oldSlowModeDelay] Previous value of slow_mode_delay, in seconds
  final int oldSlowModeDelay;

  /// [newSlowModeDelay] New value of slow_mode_delay, in seconds
  final int newSlowModeDelay;

  /// Parse from a json
  factory ChatEventSlowModeDelayChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventSlowModeDelayChanged(
        oldSlowModeDelay: json['old_slow_mode_delay'],
        newSlowModeDelay: json['new_slow_mode_delay'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_slow_mode_delay": oldSlowModeDelay,
      "new_slow_mode_delay": newSlowModeDelay,
    };
  }

  @override
  ChatEventSlowModeDelayChanged copyWith({
    int? oldSlowModeDelay,
    int? newSlowModeDelay,
  }) =>
      ChatEventSlowModeDelayChanged(
        oldSlowModeDelay: oldSlowModeDelay ?? this.oldSlowModeDelay,
        newSlowModeDelay: newSlowModeDelay ?? this.newSlowModeDelay,
      );

  static const CONSTRUCTOR = 'chatEventSlowModeDelayChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventStickerSetChanged extends ChatEventAction {
  /// The supergroup sticker set was changed
  const ChatEventStickerSetChanged({
    required this.oldStickerSetId,
    required this.newStickerSetId,
  });

  /// [oldStickerSetId] Previous identifier of the chat sticker set; 0 if none
  final int oldStickerSetId;

  /// [newStickerSetId] New identifier of the chat sticker set; 0 if none
  final int newStickerSetId;

  /// Parse from a json
  factory ChatEventStickerSetChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventStickerSetChanged(
        oldStickerSetId: int.tryParse(json['old_sticker_set_id'] ?? "") ?? 0,
        newStickerSetId: int.tryParse(json['new_sticker_set_id'] ?? "") ?? 0,
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_sticker_set_id": oldStickerSetId,
      "new_sticker_set_id": newStickerSetId,
    };
  }

  @override
  ChatEventStickerSetChanged copyWith({
    int? oldStickerSetId,
    int? newStickerSetId,
  }) =>
      ChatEventStickerSetChanged(
        oldStickerSetId: oldStickerSetId ?? this.oldStickerSetId,
        newStickerSetId: newStickerSetId ?? this.newStickerSetId,
      );

  static const CONSTRUCTOR = 'chatEventStickerSetChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventTitleChanged extends ChatEventAction {
  /// The chat title was changed
  const ChatEventTitleChanged({
    required this.oldTitle,
    required this.newTitle,
  });

  /// [oldTitle] Previous chat title
  final String oldTitle;

  /// [newTitle] New chat title
  final String newTitle;

  /// Parse from a json
  factory ChatEventTitleChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventTitleChanged(
        oldTitle: json['old_title'],
        newTitle: json['new_title'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_title": oldTitle,
      "new_title": newTitle,
    };
  }

  @override
  ChatEventTitleChanged copyWith({
    String? oldTitle,
    String? newTitle,
  }) =>
      ChatEventTitleChanged(
        oldTitle: oldTitle ?? this.oldTitle,
        newTitle: newTitle ?? this.newTitle,
      );

  static const CONSTRUCTOR = 'chatEventTitleChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventUsernameChanged extends ChatEventAction {
  /// The chat editable username was changed
  const ChatEventUsernameChanged({
    required this.oldUsername,
    required this.newUsername,
  });

  /// [oldUsername] Previous chat username
  final String oldUsername;

  /// [newUsername] New chat username
  final String newUsername;

  /// Parse from a json
  factory ChatEventUsernameChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventUsernameChanged(
        oldUsername: json['old_username'],
        newUsername: json['new_username'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_username": oldUsername,
      "new_username": newUsername,
    };
  }

  @override
  ChatEventUsernameChanged copyWith({
    String? oldUsername,
    String? newUsername,
  }) =>
      ChatEventUsernameChanged(
        oldUsername: oldUsername ?? this.oldUsername,
        newUsername: newUsername ?? this.newUsername,
      );

  static const CONSTRUCTOR = 'chatEventUsernameChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventActiveUsernamesChanged extends ChatEventAction {
  /// The chat active usernames were changed
  const ChatEventActiveUsernamesChanged({
    required this.oldUsernames,
    required this.newUsernames,
  });

  /// [oldUsernames] Previous list of active usernames
  final List<String> oldUsernames;

  /// [newUsernames] New list of active usernames
  final List<String> newUsernames;

  /// Parse from a json
  factory ChatEventActiveUsernamesChanged.fromJson(Map<String, dynamic> json) =>
      ChatEventActiveUsernamesChanged(
        oldUsernames: List<String>.from(
            (json['old_usernames'] ?? []).map((item) => item).toList()),
        newUsernames: List<String>.from(
            (json['new_usernames'] ?? []).map((item) => item).toList()),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_usernames": oldUsernames.map((i) => i).toList(),
      "new_usernames": newUsernames.map((i) => i).toList(),
    };
  }

  @override
  ChatEventActiveUsernamesChanged copyWith({
    List<String>? oldUsernames,
    List<String>? newUsernames,
  }) =>
      ChatEventActiveUsernamesChanged(
        oldUsernames: oldUsernames ?? this.oldUsernames,
        newUsernames: newUsernames ?? this.newUsernames,
      );

  static const CONSTRUCTOR = 'chatEventActiveUsernamesChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventHasProtectedContentToggled extends ChatEventAction {
  /// The has_protected_content setting of a channel was toggled
  const ChatEventHasProtectedContentToggled({
    required this.hasProtectedContent,
  });

  /// [hasProtectedContent] New value of has_protected_content
  final bool hasProtectedContent;

  /// Parse from a json
  factory ChatEventHasProtectedContentToggled.fromJson(
          Map<String, dynamic> json) =>
      ChatEventHasProtectedContentToggled(
        hasProtectedContent: json['has_protected_content'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "has_protected_content": hasProtectedContent,
    };
  }

  @override
  ChatEventHasProtectedContentToggled copyWith({
    bool? hasProtectedContent,
  }) =>
      ChatEventHasProtectedContentToggled(
        hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
      );

  static const CONSTRUCTOR = 'chatEventHasProtectedContentToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventInvitesToggled extends ChatEventAction {
  /// The can_invite_users permission of a supergroup chat was toggled
  const ChatEventInvitesToggled({
    required this.canInviteUsers,
  });

  /// [canInviteUsers] New value of can_invite_users permission
  final bool canInviteUsers;

  /// Parse from a json
  factory ChatEventInvitesToggled.fromJson(Map<String, dynamic> json) =>
      ChatEventInvitesToggled(
        canInviteUsers: json['can_invite_users'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "can_invite_users": canInviteUsers,
    };
  }

  @override
  ChatEventInvitesToggled copyWith({
    bool? canInviteUsers,
  }) =>
      ChatEventInvitesToggled(
        canInviteUsers: canInviteUsers ?? this.canInviteUsers,
      );

  static const CONSTRUCTOR = 'chatEventInvitesToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventIsAllHistoryAvailableToggled extends ChatEventAction {
  /// The is_all_history_available setting of a supergroup was toggled
  const ChatEventIsAllHistoryAvailableToggled({
    required this.isAllHistoryAvailable,
  });

  /// [isAllHistoryAvailable] New value of is_all_history_available
  final bool isAllHistoryAvailable;

  /// Parse from a json
  factory ChatEventIsAllHistoryAvailableToggled.fromJson(
          Map<String, dynamic> json) =>
      ChatEventIsAllHistoryAvailableToggled(
        isAllHistoryAvailable: json['is_all_history_available'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_all_history_available": isAllHistoryAvailable,
    };
  }

  @override
  ChatEventIsAllHistoryAvailableToggled copyWith({
    bool? isAllHistoryAvailable,
  }) =>
      ChatEventIsAllHistoryAvailableToggled(
        isAllHistoryAvailable:
            isAllHistoryAvailable ?? this.isAllHistoryAvailable,
      );

  static const CONSTRUCTOR = 'chatEventIsAllHistoryAvailableToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventHasAggressiveAntiSpamEnabledToggled extends ChatEventAction {
  /// The has_aggressive_anti_spam_enabled setting of a supergroup was toggled
  const ChatEventHasAggressiveAntiSpamEnabledToggled({
    required this.hasAggressiveAntiSpamEnabled,
  });

  /// [hasAggressiveAntiSpamEnabled] New value of has_aggressive_anti_spam_enabled
  final bool hasAggressiveAntiSpamEnabled;

  /// Parse from a json
  factory ChatEventHasAggressiveAntiSpamEnabledToggled.fromJson(
          Map<String, dynamic> json) =>
      ChatEventHasAggressiveAntiSpamEnabledToggled(
        hasAggressiveAntiSpamEnabled: json['has_aggressive_anti_spam_enabled'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "has_aggressive_anti_spam_enabled": hasAggressiveAntiSpamEnabled,
    };
  }

  @override
  ChatEventHasAggressiveAntiSpamEnabledToggled copyWith({
    bool? hasAggressiveAntiSpamEnabled,
  }) =>
      ChatEventHasAggressiveAntiSpamEnabledToggled(
        hasAggressiveAntiSpamEnabled:
            hasAggressiveAntiSpamEnabled ?? this.hasAggressiveAntiSpamEnabled,
      );

  static const CONSTRUCTOR = 'chatEventHasAggressiveAntiSpamEnabledToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventSignMessagesToggled extends ChatEventAction {
  /// The sign_messages setting of a channel was toggled
  const ChatEventSignMessagesToggled({
    required this.signMessages,
  });

  /// [signMessages] New value of sign_messages
  final bool signMessages;

  /// Parse from a json
  factory ChatEventSignMessagesToggled.fromJson(Map<String, dynamic> json) =>
      ChatEventSignMessagesToggled(
        signMessages: json['sign_messages'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sign_messages": signMessages,
    };
  }

  @override
  ChatEventSignMessagesToggled copyWith({
    bool? signMessages,
  }) =>
      ChatEventSignMessagesToggled(
        signMessages: signMessages ?? this.signMessages,
      );

  static const CONSTRUCTOR = 'chatEventSignMessagesToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventInviteLinkEdited extends ChatEventAction {
  /// A chat invite link was edited
  const ChatEventInviteLinkEdited({
    required this.oldInviteLink,
    required this.newInviteLink,
  });

  /// [oldInviteLink] Previous information about the invite link
  final ChatInviteLink oldInviteLink;

  /// [newInviteLink] New information about the invite link
  final ChatInviteLink newInviteLink;

  /// Parse from a json
  factory ChatEventInviteLinkEdited.fromJson(Map<String, dynamic> json) =>
      ChatEventInviteLinkEdited(
        oldInviteLink: ChatInviteLink.fromJson(json['old_invite_link']),
        newInviteLink: ChatInviteLink.fromJson(json['new_invite_link']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_invite_link": oldInviteLink.toJson(),
      "new_invite_link": newInviteLink.toJson(),
    };
  }

  @override
  ChatEventInviteLinkEdited copyWith({
    ChatInviteLink? oldInviteLink,
    ChatInviteLink? newInviteLink,
  }) =>
      ChatEventInviteLinkEdited(
        oldInviteLink: oldInviteLink ?? this.oldInviteLink,
        newInviteLink: newInviteLink ?? this.newInviteLink,
      );

  static const CONSTRUCTOR = 'chatEventInviteLinkEdited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventInviteLinkRevoked extends ChatEventAction {
  /// A chat invite link was revoked
  const ChatEventInviteLinkRevoked({
    required this.inviteLink,
  });

  /// [inviteLink] The invite link
  final ChatInviteLink inviteLink;

  /// Parse from a json
  factory ChatEventInviteLinkRevoked.fromJson(Map<String, dynamic> json) =>
      ChatEventInviteLinkRevoked(
        inviteLink: ChatInviteLink.fromJson(json['invite_link']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink.toJson(),
    };
  }

  @override
  ChatEventInviteLinkRevoked copyWith({
    ChatInviteLink? inviteLink,
  }) =>
      ChatEventInviteLinkRevoked(
        inviteLink: inviteLink ?? this.inviteLink,
      );

  static const CONSTRUCTOR = 'chatEventInviteLinkRevoked';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventInviteLinkDeleted extends ChatEventAction {
  /// A revoked chat invite link was deleted
  const ChatEventInviteLinkDeleted({
    required this.inviteLink,
  });

  /// [inviteLink] The invite link
  final ChatInviteLink inviteLink;

  /// Parse from a json
  factory ChatEventInviteLinkDeleted.fromJson(Map<String, dynamic> json) =>
      ChatEventInviteLinkDeleted(
        inviteLink: ChatInviteLink.fromJson(json['invite_link']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink.toJson(),
    };
  }

  @override
  ChatEventInviteLinkDeleted copyWith({
    ChatInviteLink? inviteLink,
  }) =>
      ChatEventInviteLinkDeleted(
        inviteLink: inviteLink ?? this.inviteLink,
      );

  static const CONSTRUCTOR = 'chatEventInviteLinkDeleted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventVideoChatCreated extends ChatEventAction {
  /// A video chat was created
  const ChatEventVideoChatCreated({
    required this.groupCallId,
  });

  /// [groupCallId] Identifier of the video chat. The video chat can be received through the method getGroupCall
  final int groupCallId;

  /// Parse from a json
  factory ChatEventVideoChatCreated.fromJson(Map<String, dynamic> json) =>
      ChatEventVideoChatCreated(
        groupCallId: json['group_call_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
    };
  }

  @override
  ChatEventVideoChatCreated copyWith({
    int? groupCallId,
  }) =>
      ChatEventVideoChatCreated(
        groupCallId: groupCallId ?? this.groupCallId,
      );

  static const CONSTRUCTOR = 'chatEventVideoChatCreated';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventVideoChatEnded extends ChatEventAction {
  /// A video chat was ended
  const ChatEventVideoChatEnded({
    required this.groupCallId,
  });

  /// [groupCallId] Identifier of the video chat. The video chat can be received through the method getGroupCall
  final int groupCallId;

  /// Parse from a json
  factory ChatEventVideoChatEnded.fromJson(Map<String, dynamic> json) =>
      ChatEventVideoChatEnded(
        groupCallId: json['group_call_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
    };
  }

  @override
  ChatEventVideoChatEnded copyWith({
    int? groupCallId,
  }) =>
      ChatEventVideoChatEnded(
        groupCallId: groupCallId ?? this.groupCallId,
      );

  static const CONSTRUCTOR = 'chatEventVideoChatEnded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventVideoChatMuteNewParticipantsToggled extends ChatEventAction {
  /// The mute_new_participants setting of a video chat was toggled
  const ChatEventVideoChatMuteNewParticipantsToggled({
    required this.muteNewParticipants,
  });

  /// [muteNewParticipants] New value of the mute_new_participants setting
  final bool muteNewParticipants;

  /// Parse from a json
  factory ChatEventVideoChatMuteNewParticipantsToggled.fromJson(
          Map<String, dynamic> json) =>
      ChatEventVideoChatMuteNewParticipantsToggled(
        muteNewParticipants: json['mute_new_participants'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "mute_new_participants": muteNewParticipants,
    };
  }

  @override
  ChatEventVideoChatMuteNewParticipantsToggled copyWith({
    bool? muteNewParticipants,
  }) =>
      ChatEventVideoChatMuteNewParticipantsToggled(
        muteNewParticipants: muteNewParticipants ?? this.muteNewParticipants,
      );

  static const CONSTRUCTOR = 'chatEventVideoChatMuteNewParticipantsToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventVideoChatParticipantIsMutedToggled extends ChatEventAction {
  /// A video chat participant was muted or unmuted
  const ChatEventVideoChatParticipantIsMutedToggled({
    required this.participantId,
    required this.isMuted,
  });

  /// [participantId] Identifier of the affected group call participant
  final MessageSender participantId;

  /// [isMuted] New value of is_muted
  final bool isMuted;

  /// Parse from a json
  factory ChatEventVideoChatParticipantIsMutedToggled.fromJson(
          Map<String, dynamic> json) =>
      ChatEventVideoChatParticipantIsMutedToggled(
        participantId: MessageSender.fromJson(json['participant_id']),
        isMuted: json['is_muted'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "participant_id": participantId.toJson(),
      "is_muted": isMuted,
    };
  }

  @override
  ChatEventVideoChatParticipantIsMutedToggled copyWith({
    MessageSender? participantId,
    bool? isMuted,
  }) =>
      ChatEventVideoChatParticipantIsMutedToggled(
        participantId: participantId ?? this.participantId,
        isMuted: isMuted ?? this.isMuted,
      );

  static const CONSTRUCTOR = 'chatEventVideoChatParticipantIsMutedToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventVideoChatParticipantVolumeLevelChanged extends ChatEventAction {
  /// A video chat participant volume level was changed
  const ChatEventVideoChatParticipantVolumeLevelChanged({
    required this.participantId,
    required this.volumeLevel,
  });

  /// [participantId] Identifier of the affected group call participant
  final MessageSender participantId;

  /// [volumeLevel] New value of volume_level; 1-20000 in hundreds of percents
  final int volumeLevel;

  /// Parse from a json
  factory ChatEventVideoChatParticipantVolumeLevelChanged.fromJson(
          Map<String, dynamic> json) =>
      ChatEventVideoChatParticipantVolumeLevelChanged(
        participantId: MessageSender.fromJson(json['participant_id']),
        volumeLevel: json['volume_level'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "participant_id": participantId.toJson(),
      "volume_level": volumeLevel,
    };
  }

  @override
  ChatEventVideoChatParticipantVolumeLevelChanged copyWith({
    MessageSender? participantId,
    int? volumeLevel,
  }) =>
      ChatEventVideoChatParticipantVolumeLevelChanged(
        participantId: participantId ?? this.participantId,
        volumeLevel: volumeLevel ?? this.volumeLevel,
      );

  static const CONSTRUCTOR = 'chatEventVideoChatParticipantVolumeLevelChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventIsForumToggled extends ChatEventAction {
  /// The is_forum setting of a channel was toggled
  const ChatEventIsForumToggled({
    required this.isForum,
  });

  /// [isForum] New value of is_forum
  final bool isForum;

  /// Parse from a json
  factory ChatEventIsForumToggled.fromJson(Map<String, dynamic> json) =>
      ChatEventIsForumToggled(
        isForum: json['is_forum'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_forum": isForum,
    };
  }

  @override
  ChatEventIsForumToggled copyWith({
    bool? isForum,
  }) =>
      ChatEventIsForumToggled(
        isForum: isForum ?? this.isForum,
      );

  static const CONSTRUCTOR = 'chatEventIsForumToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventForumTopicCreated extends ChatEventAction {
  /// A new forum topic was created
  const ChatEventForumTopicCreated({
    required this.topicInfo,
  });

  /// [topicInfo] Information about the topic
  final ForumTopicInfo topicInfo;

  /// Parse from a json
  factory ChatEventForumTopicCreated.fromJson(Map<String, dynamic> json) =>
      ChatEventForumTopicCreated(
        topicInfo: ForumTopicInfo.fromJson(json['topic_info']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "topic_info": topicInfo.toJson(),
    };
  }

  @override
  ChatEventForumTopicCreated copyWith({
    ForumTopicInfo? topicInfo,
  }) =>
      ChatEventForumTopicCreated(
        topicInfo: topicInfo ?? this.topicInfo,
      );

  static const CONSTRUCTOR = 'chatEventForumTopicCreated';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventForumTopicEdited extends ChatEventAction {
  /// A forum topic was edited
  const ChatEventForumTopicEdited({
    required this.oldTopicInfo,
    required this.newTopicInfo,
  });

  /// [oldTopicInfo] Old information about the topic
  final ForumTopicInfo oldTopicInfo;

  /// [newTopicInfo] New information about the topic
  final ForumTopicInfo newTopicInfo;

  /// Parse from a json
  factory ChatEventForumTopicEdited.fromJson(Map<String, dynamic> json) =>
      ChatEventForumTopicEdited(
        oldTopicInfo: ForumTopicInfo.fromJson(json['old_topic_info']),
        newTopicInfo: ForumTopicInfo.fromJson(json['new_topic_info']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_topic_info": oldTopicInfo.toJson(),
      "new_topic_info": newTopicInfo.toJson(),
    };
  }

  @override
  ChatEventForumTopicEdited copyWith({
    ForumTopicInfo? oldTopicInfo,
    ForumTopicInfo? newTopicInfo,
  }) =>
      ChatEventForumTopicEdited(
        oldTopicInfo: oldTopicInfo ?? this.oldTopicInfo,
        newTopicInfo: newTopicInfo ?? this.newTopicInfo,
      );

  static const CONSTRUCTOR = 'chatEventForumTopicEdited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventForumTopicToggleIsClosed extends ChatEventAction {
  /// A forum topic was closed or reopened
  const ChatEventForumTopicToggleIsClosed({
    required this.topicInfo,
  });

  /// [topicInfo] New information about the topic
  final ForumTopicInfo topicInfo;

  /// Parse from a json
  factory ChatEventForumTopicToggleIsClosed.fromJson(
          Map<String, dynamic> json) =>
      ChatEventForumTopicToggleIsClosed(
        topicInfo: ForumTopicInfo.fromJson(json['topic_info']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "topic_info": topicInfo.toJson(),
    };
  }

  @override
  ChatEventForumTopicToggleIsClosed copyWith({
    ForumTopicInfo? topicInfo,
  }) =>
      ChatEventForumTopicToggleIsClosed(
        topicInfo: topicInfo ?? this.topicInfo,
      );

  static const CONSTRUCTOR = 'chatEventForumTopicToggleIsClosed';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventForumTopicToggleIsHidden extends ChatEventAction {
  /// The General forum topic was hidden or unhidden
  const ChatEventForumTopicToggleIsHidden({
    required this.topicInfo,
  });

  /// [topicInfo] New information about the topic
  final ForumTopicInfo topicInfo;

  /// Parse from a json
  factory ChatEventForumTopicToggleIsHidden.fromJson(
          Map<String, dynamic> json) =>
      ChatEventForumTopicToggleIsHidden(
        topicInfo: ForumTopicInfo.fromJson(json['topic_info']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "topic_info": topicInfo.toJson(),
    };
  }

  @override
  ChatEventForumTopicToggleIsHidden copyWith({
    ForumTopicInfo? topicInfo,
  }) =>
      ChatEventForumTopicToggleIsHidden(
        topicInfo: topicInfo ?? this.topicInfo,
      );

  static const CONSTRUCTOR = 'chatEventForumTopicToggleIsHidden';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventForumTopicDeleted extends ChatEventAction {
  /// A forum topic was deleted
  const ChatEventForumTopicDeleted({
    required this.topicInfo,
  });

  /// [topicInfo] Information about the topic
  final ForumTopicInfo topicInfo;

  /// Parse from a json
  factory ChatEventForumTopicDeleted.fromJson(Map<String, dynamic> json) =>
      ChatEventForumTopicDeleted(
        topicInfo: ForumTopicInfo.fromJson(json['topic_info']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "topic_info": topicInfo.toJson(),
    };
  }

  @override
  ChatEventForumTopicDeleted copyWith({
    ForumTopicInfo? topicInfo,
  }) =>
      ChatEventForumTopicDeleted(
        topicInfo: topicInfo ?? this.topicInfo,
      );

  static const CONSTRUCTOR = 'chatEventForumTopicDeleted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventForumTopicPinned extends ChatEventAction {
  /// A pinned forum topic was changed
  const ChatEventForumTopicPinned({
    this.oldTopicInfo,
    this.newTopicInfo,
  });

  /// [oldTopicInfo] Information about the old pinned topic; may be null
  final ForumTopicInfo? oldTopicInfo;

  /// [newTopicInfo] Information about the new pinned topic; may be null
  final ForumTopicInfo? newTopicInfo;

  /// Parse from a json
  factory ChatEventForumTopicPinned.fromJson(Map<String, dynamic> json) =>
      ChatEventForumTopicPinned(
        oldTopicInfo: json['old_topic_info'] == null
            ? null
            : ForumTopicInfo.fromJson(json['old_topic_info']),
        newTopicInfo: json['new_topic_info'] == null
            ? null
            : ForumTopicInfo.fromJson(json['new_topic_info']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_topic_info": oldTopicInfo?.toJson(),
      "new_topic_info": newTopicInfo?.toJson(),
    };
  }

  @override
  ChatEventForumTopicPinned copyWith({
    ForumTopicInfo? oldTopicInfo,
    ForumTopicInfo? newTopicInfo,
  }) =>
      ChatEventForumTopicPinned(
        oldTopicInfo: oldTopicInfo ?? this.oldTopicInfo,
        newTopicInfo: newTopicInfo ?? this.newTopicInfo,
      );

  static const CONSTRUCTOR = 'chatEventForumTopicPinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}
