part of '../tdapi.dart';

class ChatEventAction extends TdObject {
  

  /// Represents a chat event
  ChatEventAction();

  /// a ChatEventAction return type can be :
  /// * ChatEventMessageEdited
  /// * ChatEventMessageDeleted
  /// * ChatEventPollStopped
  /// * ChatEventMessagePinned
  /// * ChatEventMessageUnpinned
  /// * ChatEventMemberJoined
  /// * ChatEventMemberLeft
  /// * ChatEventMemberInvited
  /// * ChatEventMemberPromoted
  /// * ChatEventMemberRestricted
  /// * ChatEventTitleChanged
  /// * ChatEventPermissionsChanged
  /// * ChatEventDescriptionChanged
  /// * ChatEventUsernameChanged
  /// * ChatEventPhotoChanged
  /// * ChatEventInvitesToggled
  /// * ChatEventLinkedChatChanged
  /// * ChatEventSlowModeDelayChanged
  /// * ChatEventSignMessagesToggled
  /// * ChatEventStickerSetChanged
  /// * ChatEventLocationChanged
  /// * ChatEventIsAllHistoryAvailableToggled
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
      case ChatEventSignMessagesToggled.CONSTRUCTOR:
        return ChatEventSignMessagesToggled.fromJson(json);
      case ChatEventStickerSetChanged.CONSTRUCTOR:
        return ChatEventStickerSetChanged.fromJson(json);
      case ChatEventLocationChanged.CONSTRUCTOR:
        return ChatEventLocationChanged.fromJson(json);
      case ChatEventIsAllHistoryAvailableToggled.CONSTRUCTOR:
        return ChatEventIsAllHistoryAvailableToggled.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'chatEventAction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageEdited extends ChatEventAction {
  Message oldMessage;
  Message newMessage;

  /// A message was edited. 
  /// [oldMessage] The original message before the edit . 
  /// [newMessage] The message after it was edited
  ChatEventMessageEdited({this.oldMessage,
    this.newMessage});

  /// Parse from a json
  ChatEventMessageEdited.fromJson(Map<String, dynamic> json)  {
    this.oldMessage = Message.fromJson(json['old_message'] ?? <String, dynamic>{});
    this.newMessage = Message.fromJson(json['new_message'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_message": this.oldMessage == null ? null : this.oldMessage.toJson(),
      "new_message": this.newMessage == null ? null : this.newMessage.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventMessageEdited';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageDeleted extends ChatEventAction {
  Message message;

  /// A message was deleted. 
  /// [message] Deleted message
  ChatEventMessageDeleted({this.message});

  /// Parse from a json
  ChatEventMessageDeleted.fromJson(Map<String, dynamic> json)  {
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": this.message == null ? null : this.message.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventMessageDeleted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventPollStopped extends ChatEventAction {
  Message message;

  /// A poll in a message was stopped. 
  /// [message] The message with the poll
  ChatEventPollStopped({this.message});

  /// Parse from a json
  ChatEventPollStopped.fromJson(Map<String, dynamic> json)  {
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": this.message == null ? null : this.message.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventPollStopped';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessagePinned extends ChatEventAction {
  Message message;

  /// A message was pinned. 
  /// [message] Pinned message
  ChatEventMessagePinned({this.message});

  /// Parse from a json
  ChatEventMessagePinned.fromJson(Map<String, dynamic> json)  {
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": this.message == null ? null : this.message.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventMessagePinned';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageUnpinned extends ChatEventAction {
  

  /// A message was unpinned
  ChatEventMessageUnpinned();

  /// Parse from a json
  ChatEventMessageUnpinned.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatEventMessageUnpinned';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberJoined extends ChatEventAction {
  

  /// A new member joined the chat
  ChatEventMemberJoined();

  /// Parse from a json
  ChatEventMemberJoined.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatEventMemberJoined';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberLeft extends ChatEventAction {
  

  /// A member left the chat
  ChatEventMemberLeft();

  /// Parse from a json
  ChatEventMemberLeft.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatEventMemberLeft';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberInvited extends ChatEventAction {
  int userId;
  ChatMemberStatus status;

  /// A new chat member was invited. 
  /// [userId] New member user identifier . 
  /// [status] New member status
  ChatEventMemberInvited({this.userId,
    this.status});

  /// Parse from a json
  ChatEventMemberInvited.fromJson(Map<String, dynamic> json)  {
    this.userId = json['user_id'];
    this.status = ChatMemberStatus.fromJson(json['status'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "status": this.status == null ? null : this.status.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventMemberInvited';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberPromoted extends ChatEventAction {
  int userId;
  ChatMemberStatus oldStatus;
  ChatMemberStatus newStatus;

  /// A chat member has gained/lost administrator status, or the list of their administrator privileges has changed. 
  /// [userId] Chat member user identifier . 
  /// [oldStatus] Previous status of the chat member . 
  /// [newStatus] New status of the chat member
  ChatEventMemberPromoted({this.userId,
    this.oldStatus,
    this.newStatus});

  /// Parse from a json
  ChatEventMemberPromoted.fromJson(Map<String, dynamic> json)  {
    this.userId = json['user_id'];
    this.oldStatus = ChatMemberStatus.fromJson(json['old_status'] ?? <String, dynamic>{});
    this.newStatus = ChatMemberStatus.fromJson(json['new_status'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "old_status": this.oldStatus == null ? null : this.oldStatus.toJson(),
      "new_status": this.newStatus == null ? null : this.newStatus.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventMemberPromoted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberRestricted extends ChatEventAction {
  int userId;
  ChatMemberStatus oldStatus;
  ChatMemberStatus newStatus;

  /// A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed. 
  /// [userId] Chat member user identifier . 
  /// [oldStatus] Previous status of the chat member . 
  /// [newStatus] New status of the chat member
  ChatEventMemberRestricted({this.userId,
    this.oldStatus,
    this.newStatus});

  /// Parse from a json
  ChatEventMemberRestricted.fromJson(Map<String, dynamic> json)  {
    this.userId = json['user_id'];
    this.oldStatus = ChatMemberStatus.fromJson(json['old_status'] ?? <String, dynamic>{});
    this.newStatus = ChatMemberStatus.fromJson(json['new_status'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "old_status": this.oldStatus == null ? null : this.oldStatus.toJson(),
      "new_status": this.newStatus == null ? null : this.newStatus.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventMemberRestricted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventTitleChanged extends ChatEventAction {
  String oldTitle;
  String newTitle;

  /// The chat title was changed. 
  /// [oldTitle] Previous chat title . 
  /// [newTitle] New chat title
  ChatEventTitleChanged({this.oldTitle,
    this.newTitle});

  /// Parse from a json
  ChatEventTitleChanged.fromJson(Map<String, dynamic> json)  {
    this.oldTitle = json['old_title'];
    this.newTitle = json['new_title'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_title": this.oldTitle,
      "new_title": this.newTitle,
    };
  }

  static const CONSTRUCTOR = 'chatEventTitleChanged';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventPermissionsChanged extends ChatEventAction {
  ChatPermissions oldPermissions;
  ChatPermissions newPermissions;

  /// The chat permissions was changed. 
  /// [oldPermissions] Previous chat permissions . 
  /// [newPermissions] New chat permissions
  ChatEventPermissionsChanged({this.oldPermissions,
    this.newPermissions});

  /// Parse from a json
  ChatEventPermissionsChanged.fromJson(Map<String, dynamic> json)  {
    this.oldPermissions = ChatPermissions.fromJson(json['old_permissions'] ?? <String, dynamic>{});
    this.newPermissions = ChatPermissions.fromJson(json['new_permissions'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_permissions": this.oldPermissions == null ? null : this.oldPermissions.toJson(),
      "new_permissions": this.newPermissions == null ? null : this.newPermissions.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventPermissionsChanged';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventDescriptionChanged extends ChatEventAction {
  String oldDescription;
  String newDescription;

  /// The chat description was changed. 
  /// [oldDescription] Previous chat description . 
  /// [newDescription] New chat description
  ChatEventDescriptionChanged({this.oldDescription,
    this.newDescription});

  /// Parse from a json
  ChatEventDescriptionChanged.fromJson(Map<String, dynamic> json)  {
    this.oldDescription = json['old_description'];
    this.newDescription = json['new_description'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_description": this.oldDescription,
      "new_description": this.newDescription,
    };
  }

  static const CONSTRUCTOR = 'chatEventDescriptionChanged';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventUsernameChanged extends ChatEventAction {
  String oldUsername;
  String newUsername;

  /// The chat username was changed. 
  /// [oldUsername] Previous chat username . 
  /// [newUsername] New chat username
  ChatEventUsernameChanged({this.oldUsername,
    this.newUsername});

  /// Parse from a json
  ChatEventUsernameChanged.fromJson(Map<String, dynamic> json)  {
    this.oldUsername = json['old_username'];
    this.newUsername = json['new_username'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_username": this.oldUsername,
      "new_username": this.newUsername,
    };
  }

  static const CONSTRUCTOR = 'chatEventUsernameChanged';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventPhotoChanged extends ChatEventAction {
  ChatPhoto oldPhoto;
  ChatPhoto newPhoto;

  /// The chat photo was changed. 
  /// [oldPhoto] Previous chat photo value; may be null . 
  /// [newPhoto] New chat photo value; may be null
  ChatEventPhotoChanged({this.oldPhoto,
    this.newPhoto});

  /// Parse from a json
  ChatEventPhotoChanged.fromJson(Map<String, dynamic> json)  {
    this.oldPhoto = ChatPhoto.fromJson(json['old_photo'] ?? <String, dynamic>{});
    this.newPhoto = ChatPhoto.fromJson(json['new_photo'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_photo": this.oldPhoto == null ? null : this.oldPhoto.toJson(),
      "new_photo": this.newPhoto == null ? null : this.newPhoto.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventPhotoChanged';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventInvitesToggled extends ChatEventAction {
  bool canInviteUsers;

  /// The can_invite_users permission of a supergroup chat was toggled. 
  /// [canInviteUsers] New value of can_invite_users permission
  ChatEventInvitesToggled({this.canInviteUsers});

  /// Parse from a json
  ChatEventInvitesToggled.fromJson(Map<String, dynamic> json)  {
    this.canInviteUsers = json['can_invite_users'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "can_invite_users": this.canInviteUsers,
    };
  }

  static const CONSTRUCTOR = 'chatEventInvitesToggled';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventLinkedChatChanged extends ChatEventAction {
  int oldLinkedChatId;
  int newLinkedChatId;

  /// The linked chat of a supergroup was changed. 
  /// [oldLinkedChatId] Previous supergroup linked chat identifier . 
  /// [newLinkedChatId] New supergroup linked chat identifier
  ChatEventLinkedChatChanged({this.oldLinkedChatId,
    this.newLinkedChatId});

  /// Parse from a json
  ChatEventLinkedChatChanged.fromJson(Map<String, dynamic> json)  {
    this.oldLinkedChatId = json['old_linked_chat_id'];
    this.newLinkedChatId = json['new_linked_chat_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_linked_chat_id": this.oldLinkedChatId,
      "new_linked_chat_id": this.newLinkedChatId,
    };
  }

  static const CONSTRUCTOR = 'chatEventLinkedChatChanged';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventSlowModeDelayChanged extends ChatEventAction {
  int oldSlowModeDelay;
  int newSlowModeDelay;

  /// The slow_mode_delay setting of a supergroup was changed. 
  /// [oldSlowModeDelay] Previous value of slow_mode_delay . 
  /// [newSlowModeDelay] New value of slow_mode_delay
  ChatEventSlowModeDelayChanged({this.oldSlowModeDelay,
    this.newSlowModeDelay});

  /// Parse from a json
  ChatEventSlowModeDelayChanged.fromJson(Map<String, dynamic> json)  {
    this.oldSlowModeDelay = json['old_slow_mode_delay'];
    this.newSlowModeDelay = json['new_slow_mode_delay'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_slow_mode_delay": this.oldSlowModeDelay,
      "new_slow_mode_delay": this.newSlowModeDelay,
    };
  }

  static const CONSTRUCTOR = 'chatEventSlowModeDelayChanged';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventSignMessagesToggled extends ChatEventAction {
  bool signMessages;

  /// The sign_messages setting of a channel was toggled. 
  /// [signMessages] New value of sign_messages
  ChatEventSignMessagesToggled({this.signMessages});

  /// Parse from a json
  ChatEventSignMessagesToggled.fromJson(Map<String, dynamic> json)  {
    this.signMessages = json['sign_messages'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sign_messages": this.signMessages,
    };
  }

  static const CONSTRUCTOR = 'chatEventSignMessagesToggled';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventStickerSetChanged extends ChatEventAction {
  int oldStickerSetId;
  int newStickerSetId;

  /// The supergroup sticker set was changed. 
  /// [oldStickerSetId] Previous identifier of the chat sticker set; 0 if none . 
  /// [newStickerSetId] New identifier of the chat sticker set; 0 if none
  ChatEventStickerSetChanged({this.oldStickerSetId,
    this.newStickerSetId});

  /// Parse from a json
  ChatEventStickerSetChanged.fromJson(Map<String, dynamic> json)  {
    this.oldStickerSetId = json['old_sticker_set_id'];
    this.newStickerSetId = json['new_sticker_set_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_sticker_set_id": this.oldStickerSetId,
      "new_sticker_set_id": this.newStickerSetId,
    };
  }

  static const CONSTRUCTOR = 'chatEventStickerSetChanged';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventLocationChanged extends ChatEventAction {
  ChatLocation oldLocation;
  ChatLocation newLocation;

  /// The supergroup location was changed. 
  /// [oldLocation] Previous location; may be null . 
  /// [newLocation] New location; may be null
  ChatEventLocationChanged({this.oldLocation,
    this.newLocation});

  /// Parse from a json
  ChatEventLocationChanged.fromJson(Map<String, dynamic> json)  {
    this.oldLocation = ChatLocation.fromJson(json['old_location'] ?? <String, dynamic>{});
    this.newLocation = ChatLocation.fromJson(json['new_location'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "old_location": this.oldLocation == null ? null : this.oldLocation.toJson(),
      "new_location": this.newLocation == null ? null : this.newLocation.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatEventLocationChanged';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventIsAllHistoryAvailableToggled extends ChatEventAction {
  bool isAllHistoryAvailable;

  /// The is_all_history_available setting of a supergroup was toggled. 
  /// [isAllHistoryAvailable] New value of is_all_history_available
  ChatEventIsAllHistoryAvailableToggled({this.isAllHistoryAvailable});

  /// Parse from a json
  ChatEventIsAllHistoryAvailableToggled.fromJson(Map<String, dynamic> json)  {
    this.isAllHistoryAvailable = json['is_all_history_available'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_all_history_available": this.isAllHistoryAvailable,
    };
  }

  static const CONSTRUCTOR = 'chatEventIsAllHistoryAvailableToggled';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}