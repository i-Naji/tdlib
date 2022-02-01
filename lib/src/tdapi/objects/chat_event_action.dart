part of '../tdapi.dart';

class ChatEventAction extends TdObject {

  /// Represents a chat event
  const ChatEventAction();
  
  /// a ChatEventAction return type can be :
  /// * [ChatEventMessageEdited]
  /// * [ChatEventMessageDeleted]
  /// * [ChatEventPollStopped]
  /// * [ChatEventMessagePinned]
  /// * [ChatEventMessageUnpinned]
  /// * [ChatEventMemberJoined]
  /// * [ChatEventMemberJoinedByInviteLink]
  /// * [ChatEventMemberJoinedByRequest]
  /// * [ChatEventMemberLeft]
  /// * [ChatEventMemberInvited]
  /// * [ChatEventMemberPromoted]
  /// * [ChatEventMemberRestricted]
  /// * [ChatEventTitleChanged]
  /// * [ChatEventPermissionsChanged]
  /// * [ChatEventDescriptionChanged]
  /// * [ChatEventUsernameChanged]
  /// * [ChatEventPhotoChanged]
  /// * [ChatEventInvitesToggled]
  /// * [ChatEventLinkedChatChanged]
  /// * [ChatEventSlowModeDelayChanged]
  /// * [ChatEventMessageTtlChanged]
  /// * [ChatEventSignMessagesToggled]
  /// * [ChatEventHasProtectedContentToggled]
  /// * [ChatEventStickerSetChanged]
  /// * [ChatEventLocationChanged]
  /// * [ChatEventIsAllHistoryAvailableToggled]
  /// * [ChatEventInviteLinkEdited]
  /// * [ChatEventInviteLinkRevoked]
  /// * [ChatEventInviteLinkDeleted]
  /// * [ChatEventVideoChatCreated]
  /// * [ChatEventVideoChatEnded]
  /// * [ChatEventVideoChatParticipantIsMutedToggled]
  /// * [ChatEventVideoChatParticipantVolumeLevelChanged]
  /// * [ChatEventVideoChatMuteNewParticipantsToggled]
  factory ChatEventAction.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatEventMessageEdited.CONSTRUCTOR:
        return ChatEventMessageEdited.fromJson(json);
      case ChatEventMessageDeleted.CONSTRUCTOR:
        return ChatEventMessageDeleted.fromJson(json);
      case ChatEventPollStopped.CONSTRUCTOR:
        return ChatEventPollStopped.fromJson(json);
      case ChatEventMessagePinned.CONSTRUCTOR:
        return ChatEventMessagePinned.fromJson(json);
      case ChatEventMessageUnpinned.CONSTRUCTOR:
        return ChatEventMessageUnpinned.fromJson(json);
      case ChatEventMemberJoined.CONSTRUCTOR:
        return ChatEventMemberJoined.fromJson(json);
      case ChatEventMemberJoinedByInviteLink.CONSTRUCTOR:
        return ChatEventMemberJoinedByInviteLink.fromJson(json);
      case ChatEventMemberJoinedByRequest.CONSTRUCTOR:
        return ChatEventMemberJoinedByRequest.fromJson(json);
      case ChatEventMemberLeft.CONSTRUCTOR:
        return ChatEventMemberLeft.fromJson(json);
      case ChatEventMemberInvited.CONSTRUCTOR:
        return ChatEventMemberInvited.fromJson(json);
      case ChatEventMemberPromoted.CONSTRUCTOR:
        return ChatEventMemberPromoted.fromJson(json);
      case ChatEventMemberRestricted.CONSTRUCTOR:
        return ChatEventMemberRestricted.fromJson(json);
      case ChatEventTitleChanged.CONSTRUCTOR:
        return ChatEventTitleChanged.fromJson(json);
      case ChatEventPermissionsChanged.CONSTRUCTOR:
        return ChatEventPermissionsChanged.fromJson(json);
      case ChatEventDescriptionChanged.CONSTRUCTOR:
        return ChatEventDescriptionChanged.fromJson(json);
      case ChatEventUsernameChanged.CONSTRUCTOR:
        return ChatEventUsernameChanged.fromJson(json);
      case ChatEventPhotoChanged.CONSTRUCTOR:
        return ChatEventPhotoChanged.fromJson(json);
      case ChatEventInvitesToggled.CONSTRUCTOR:
        return ChatEventInvitesToggled.fromJson(json);
      case ChatEventLinkedChatChanged.CONSTRUCTOR:
        return ChatEventLinkedChatChanged.fromJson(json);
      case ChatEventSlowModeDelayChanged.CONSTRUCTOR:
        return ChatEventSlowModeDelayChanged.fromJson(json);
      case ChatEventMessageTtlChanged.CONSTRUCTOR:
        return ChatEventMessageTtlChanged.fromJson(json);
      case ChatEventSignMessagesToggled.CONSTRUCTOR:
        return ChatEventSignMessagesToggled.fromJson(json);
      case ChatEventHasProtectedContentToggled.CONSTRUCTOR:
        return ChatEventHasProtectedContentToggled.fromJson(json);
      case ChatEventStickerSetChanged.CONSTRUCTOR:
        return ChatEventStickerSetChanged.fromJson(json);
      case ChatEventLocationChanged.CONSTRUCTOR:
        return ChatEventLocationChanged.fromJson(json);
      case ChatEventIsAllHistoryAvailableToggled.CONSTRUCTOR:
        return ChatEventIsAllHistoryAvailableToggled.fromJson(json);
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
      case ChatEventVideoChatParticipantIsMutedToggled.CONSTRUCTOR:
        return ChatEventVideoChatParticipantIsMutedToggled.fromJson(json);
      case ChatEventVideoChatParticipantVolumeLevelChanged.CONSTRUCTOR:
        return ChatEventVideoChatParticipantVolumeLevelChanged.fromJson(json);
      case ChatEventVideoChatMuteNewParticipantsToggled.CONSTRUCTOR:
        return ChatEventVideoChatMuteNewParticipantsToggled.fromJson(json);
      default:
        return const ChatEventAction();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
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
  factory ChatEventMessageEdited.fromJson(Map<String, dynamic> json) => ChatEventMessageEdited(
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
  }) => ChatEventMessageEdited(
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
  });
  
  /// [message] Deleted message
  final Message message;
  
  /// Parse from a json
  factory ChatEventMessageDeleted.fromJson(Map<String, dynamic> json) => ChatEventMessageDeleted(
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
  ChatEventMessageDeleted copyWith({
    Message? message,
  }) => ChatEventMessageDeleted(
    message: message ?? this.message,
  );

  static const CONSTRUCTOR = 'chatEventMessageDeleted';
  
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
  factory ChatEventPollStopped.fromJson(Map<String, dynamic> json) => ChatEventPollStopped(
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
  }) => ChatEventPollStopped(
    message: message ?? this.message,
  );

  static const CONSTRUCTOR = 'chatEventPollStopped';
  
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
  factory ChatEventMessagePinned.fromJson(Map<String, dynamic> json) => ChatEventMessagePinned(
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
  }) => ChatEventMessagePinned(
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
  factory ChatEventMessageUnpinned.fromJson(Map<String, dynamic> json) => ChatEventMessageUnpinned(
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
  }) => ChatEventMessageUnpinned(
    message: message ?? this.message,
  );

  static const CONSTRUCTOR = 'chatEventMessageUnpinned';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatEventMemberJoined extends ChatEventAction {

  /// A new member joined the chat
  const ChatEventMemberJoined();
  
  /// Parse from a json
  factory ChatEventMemberJoined.fromJson(Map<String, dynamic> json) => const ChatEventMemberJoined();
  
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
  });
  
  /// [inviteLink] Invite link used to join the chat
  final ChatInviteLink inviteLink;
  
  /// Parse from a json
  factory ChatEventMemberJoinedByInviteLink.fromJson(Map<String, dynamic> json) => ChatEventMemberJoinedByInviteLink(
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
  ChatEventMemberJoinedByInviteLink copyWith({
    ChatInviteLink? inviteLink,
  }) => ChatEventMemberJoinedByInviteLink(
    inviteLink: inviteLink ?? this.inviteLink,
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
  factory ChatEventMemberJoinedByRequest.fromJson(Map<String, dynamic> json) => ChatEventMemberJoinedByRequest(
    approverUserId: json['approver_user_id'],
    inviteLink: json['invite_link'] == null ? null : ChatInviteLink.fromJson(json['invite_link']),
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
  }) => ChatEventMemberJoinedByRequest(
    approverUserId: approverUserId ?? this.approverUserId,
    inviteLink: inviteLink ?? this.inviteLink,
  );

  static const CONSTRUCTOR = 'chatEventMemberJoinedByRequest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatEventMemberLeft extends ChatEventAction {

  /// A member left the chat
  const ChatEventMemberLeft();
  
  /// Parse from a json
  factory ChatEventMemberLeft.fromJson(Map<String, dynamic> json) => const ChatEventMemberLeft();
  
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
  factory ChatEventMemberInvited.fromJson(Map<String, dynamic> json) => ChatEventMemberInvited(
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
  }) => ChatEventMemberInvited(
    userId: userId ?? this.userId,
    status: status ?? this.status,
  );

  static const CONSTRUCTOR = 'chatEventMemberInvited';
  
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
  factory ChatEventMemberPromoted.fromJson(Map<String, dynamic> json) => ChatEventMemberPromoted(
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
  }) => ChatEventMemberPromoted(
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
  factory ChatEventMemberRestricted.fromJson(Map<String, dynamic> json) => ChatEventMemberRestricted(
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
  }) => ChatEventMemberRestricted(
    memberId: memberId ?? this.memberId,
    oldStatus: oldStatus ?? this.oldStatus,
    newStatus: newStatus ?? this.newStatus,
  );

  static const CONSTRUCTOR = 'chatEventMemberRestricted';
  
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
  factory ChatEventTitleChanged.fromJson(Map<String, dynamic> json) => ChatEventTitleChanged(
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
  }) => ChatEventTitleChanged(
    oldTitle: oldTitle ?? this.oldTitle,
    newTitle: newTitle ?? this.newTitle,
  );

  static const CONSTRUCTOR = 'chatEventTitleChanged';
  
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
  factory ChatEventPermissionsChanged.fromJson(Map<String, dynamic> json) => ChatEventPermissionsChanged(
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
  }) => ChatEventPermissionsChanged(
    oldPermissions: oldPermissions ?? this.oldPermissions,
    newPermissions: newPermissions ?? this.newPermissions,
  );

  static const CONSTRUCTOR = 'chatEventPermissionsChanged';
  
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
  factory ChatEventDescriptionChanged.fromJson(Map<String, dynamic> json) => ChatEventDescriptionChanged(
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
  }) => ChatEventDescriptionChanged(
    oldDescription: oldDescription ?? this.oldDescription,
    newDescription: newDescription ?? this.newDescription,
  );

  static const CONSTRUCTOR = 'chatEventDescriptionChanged';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatEventUsernameChanged extends ChatEventAction {

  /// The chat username was changed
  const ChatEventUsernameChanged({
    required this.oldUsername,
    required this.newUsername,
  });
  
  /// [oldUsername] Previous chat username 
  final String oldUsername;

  /// [newUsername] New chat username
  final String newUsername;
  
  /// Parse from a json
  factory ChatEventUsernameChanged.fromJson(Map<String, dynamic> json) => ChatEventUsernameChanged(
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
  }) => ChatEventUsernameChanged(
    oldUsername: oldUsername ?? this.oldUsername,
    newUsername: newUsername ?? this.newUsername,
  );

  static const CONSTRUCTOR = 'chatEventUsernameChanged';
  
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
  factory ChatEventPhotoChanged.fromJson(Map<String, dynamic> json) => ChatEventPhotoChanged(
    oldPhoto: json['old_photo'] == null ? null : ChatPhoto.fromJson(json['old_photo']),
    newPhoto: json['new_photo'] == null ? null : ChatPhoto.fromJson(json['new_photo']),
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
  }) => ChatEventPhotoChanged(
    oldPhoto: oldPhoto ?? this.oldPhoto,
    newPhoto: newPhoto ?? this.newPhoto,
  );

  static const CONSTRUCTOR = 'chatEventPhotoChanged';
  
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
  factory ChatEventInvitesToggled.fromJson(Map<String, dynamic> json) => ChatEventInvitesToggled(
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
  }) => ChatEventInvitesToggled(
    canInviteUsers: canInviteUsers ?? this.canInviteUsers,
  );

  static const CONSTRUCTOR = 'chatEventInvitesToggled';
  
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
  factory ChatEventLinkedChatChanged.fromJson(Map<String, dynamic> json) => ChatEventLinkedChatChanged(
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
  }) => ChatEventLinkedChatChanged(
    oldLinkedChatId: oldLinkedChatId ?? this.oldLinkedChatId,
    newLinkedChatId: newLinkedChatId ?? this.newLinkedChatId,
  );

  static const CONSTRUCTOR = 'chatEventLinkedChatChanged';
  
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
  factory ChatEventSlowModeDelayChanged.fromJson(Map<String, dynamic> json) => ChatEventSlowModeDelayChanged(
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
  }) => ChatEventSlowModeDelayChanged(
    oldSlowModeDelay: oldSlowModeDelay ?? this.oldSlowModeDelay,
    newSlowModeDelay: newSlowModeDelay ?? this.newSlowModeDelay,
  );

  static const CONSTRUCTOR = 'chatEventSlowModeDelayChanged';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatEventMessageTtlChanged extends ChatEventAction {

  /// The message TTL was changed
  const ChatEventMessageTtlChanged({
    required this.oldMessageTtl,
    required this.newMessageTtl,
  });
  
  /// [oldMessageTtl] Previous value of message_ttl 
  final int oldMessageTtl;

  /// [newMessageTtl] New value of message_ttl
  final int newMessageTtl;
  
  /// Parse from a json
  factory ChatEventMessageTtlChanged.fromJson(Map<String, dynamic> json) => ChatEventMessageTtlChanged(
    oldMessageTtl: json['old_message_ttl'],
    newMessageTtl: json['new_message_ttl'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_message_ttl": oldMessageTtl,
      "new_message_ttl": newMessageTtl,
    };
  }
  
  @override
  ChatEventMessageTtlChanged copyWith({
    int? oldMessageTtl,
    int? newMessageTtl,
  }) => ChatEventMessageTtlChanged(
    oldMessageTtl: oldMessageTtl ?? this.oldMessageTtl,
    newMessageTtl: newMessageTtl ?? this.newMessageTtl,
  );

  static const CONSTRUCTOR = 'chatEventMessageTtlChanged';
  
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
  factory ChatEventSignMessagesToggled.fromJson(Map<String, dynamic> json) => ChatEventSignMessagesToggled(
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
  }) => ChatEventSignMessagesToggled(
    signMessages: signMessages ?? this.signMessages,
  );

  static const CONSTRUCTOR = 'chatEventSignMessagesToggled';
  
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
  factory ChatEventHasProtectedContentToggled.fromJson(Map<String, dynamic> json) => ChatEventHasProtectedContentToggled(
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
  }) => ChatEventHasProtectedContentToggled(
    hasProtectedContent: hasProtectedContent ?? this.hasProtectedContent,
  );

  static const CONSTRUCTOR = 'chatEventHasProtectedContentToggled';
  
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
  factory ChatEventStickerSetChanged.fromJson(Map<String, dynamic> json) => ChatEventStickerSetChanged(
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
  }) => ChatEventStickerSetChanged(
    oldStickerSetId: oldStickerSetId ?? this.oldStickerSetId,
    newStickerSetId: newStickerSetId ?? this.newStickerSetId,
  );

  static const CONSTRUCTOR = 'chatEventStickerSetChanged';
  
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
  factory ChatEventLocationChanged.fromJson(Map<String, dynamic> json) => ChatEventLocationChanged(
    oldLocation: json['old_location'] == null ? null : ChatLocation.fromJson(json['old_location']),
    newLocation: json['new_location'] == null ? null : ChatLocation.fromJson(json['new_location']),
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
  }) => ChatEventLocationChanged(
    oldLocation: oldLocation ?? this.oldLocation,
    newLocation: newLocation ?? this.newLocation,
  );

  static const CONSTRUCTOR = 'chatEventLocationChanged';
  
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
  factory ChatEventIsAllHistoryAvailableToggled.fromJson(Map<String, dynamic> json) => ChatEventIsAllHistoryAvailableToggled(
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
  }) => ChatEventIsAllHistoryAvailableToggled(
    isAllHistoryAvailable: isAllHistoryAvailable ?? this.isAllHistoryAvailable,
  );

  static const CONSTRUCTOR = 'chatEventIsAllHistoryAvailableToggled';
  
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
  factory ChatEventInviteLinkEdited.fromJson(Map<String, dynamic> json) => ChatEventInviteLinkEdited(
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
  }) => ChatEventInviteLinkEdited(
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
  factory ChatEventInviteLinkRevoked.fromJson(Map<String, dynamic> json) => ChatEventInviteLinkRevoked(
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
  }) => ChatEventInviteLinkRevoked(
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
  factory ChatEventInviteLinkDeleted.fromJson(Map<String, dynamic> json) => ChatEventInviteLinkDeleted(
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
  }) => ChatEventInviteLinkDeleted(
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
  factory ChatEventVideoChatCreated.fromJson(Map<String, dynamic> json) => ChatEventVideoChatCreated(
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
  }) => ChatEventVideoChatCreated(
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
  factory ChatEventVideoChatEnded.fromJson(Map<String, dynamic> json) => ChatEventVideoChatEnded(
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
  }) => ChatEventVideoChatEnded(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const CONSTRUCTOR = 'chatEventVideoChatEnded';
  
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
  factory ChatEventVideoChatParticipantIsMutedToggled.fromJson(Map<String, dynamic> json) => ChatEventVideoChatParticipantIsMutedToggled(
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
  }) => ChatEventVideoChatParticipantIsMutedToggled(
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
  factory ChatEventVideoChatParticipantVolumeLevelChanged.fromJson(Map<String, dynamic> json) => ChatEventVideoChatParticipantVolumeLevelChanged(
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
  }) => ChatEventVideoChatParticipantVolumeLevelChanged(
    participantId: participantId ?? this.participantId,
    volumeLevel: volumeLevel ?? this.volumeLevel,
  );

  static const CONSTRUCTOR = 'chatEventVideoChatParticipantVolumeLevelChanged';
  
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
  factory ChatEventVideoChatMuteNewParticipantsToggled.fromJson(Map<String, dynamic> json) => ChatEventVideoChatMuteNewParticipantsToggled(
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
  }) => ChatEventVideoChatMuteNewParticipantsToggled(
    muteNewParticipants: muteNewParticipants ?? this.muteNewParticipants,
  );

  static const CONSTRUCTOR = 'chatEventVideoChatMuteNewParticipantsToggled';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
