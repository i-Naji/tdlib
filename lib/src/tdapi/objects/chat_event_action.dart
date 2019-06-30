part of '../tdapi.dart';

class ChatEventAction implements TLObject {
  /// Represents a chat event
  ChatEventAction();

  /// a ChatEventAction return type can be :
  /// * ChatEventMessageDeleted
  /// * ChatEventIsAllHistoryAvailableToggled
  /// * ChatEventMessagePinned
  /// * ChatEventMessageEdited
  /// * ChatEventDescriptionChanged
  /// * ChatEventMessageUnpinned
  /// * ChatEventPhotoChanged
  /// * ChatEventStickerSetChanged
  /// * ChatEventMemberLeft
  /// * ChatEventMemberJoined
  /// * ChatEventMemberRestricted
  /// * ChatEventMemberPromoted
  /// * ChatEventInvitesToggled
  /// * ChatEventSignMessagesToggled
  /// * ChatEventTitleChanged
  /// * ChatEventMemberInvited
  /// * ChatEventUsernameChanged
  factory ChatEventAction.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case ChatEventMessageDeleted.CONSTRUCTOR:
        return ChatEventMessageDeleted.fromJson(json);
      case ChatEventIsAllHistoryAvailableToggled.CONSTRUCTOR:
        return ChatEventIsAllHistoryAvailableToggled.fromJson(json);
      case ChatEventMessagePinned.CONSTRUCTOR:
        return ChatEventMessagePinned.fromJson(json);
      case ChatEventMessageEdited.CONSTRUCTOR:
        return ChatEventMessageEdited.fromJson(json);
      case ChatEventDescriptionChanged.CONSTRUCTOR:
        return ChatEventDescriptionChanged.fromJson(json);
      case ChatEventMessageUnpinned.CONSTRUCTOR:
        return ChatEventMessageUnpinned.fromJson(json);
      case ChatEventPhotoChanged.CONSTRUCTOR:
        return ChatEventPhotoChanged.fromJson(json);
      case ChatEventStickerSetChanged.CONSTRUCTOR:
        return ChatEventStickerSetChanged.fromJson(json);
      case ChatEventMemberLeft.CONSTRUCTOR:
        return ChatEventMemberLeft.fromJson(json);
      case ChatEventMemberJoined.CONSTRUCTOR:
        return ChatEventMemberJoined.fromJson(json);
      case ChatEventMemberRestricted.CONSTRUCTOR:
        return ChatEventMemberRestricted.fromJson(json);
      case ChatEventMemberPromoted.CONSTRUCTOR:
        return ChatEventMemberPromoted.fromJson(json);
      case ChatEventInvitesToggled.CONSTRUCTOR:
        return ChatEventInvitesToggled.fromJson(json);
      case ChatEventSignMessagesToggled.CONSTRUCTOR:
        return ChatEventSignMessagesToggled.fromJson(json);
      case ChatEventTitleChanged.CONSTRUCTOR:
        return ChatEventTitleChanged.fromJson(json);
      case ChatEventMemberInvited.CONSTRUCTOR:
        return ChatEventMemberInvited.fromJson(json);
      case ChatEventUsernameChanged.CONSTRUCTOR:
        return ChatEventUsernameChanged.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'chatEventAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageEdited implements ChatEventAction {
  Message oldMessage;
  Message newMessage;

  /// A message was edited.
  ///[oldMessage] The original message before the edit .
  /// [newMessage] The message after it was edited
  ChatEventMessageEdited({this.oldMessage, this.newMessage});

  /// Parse from a json
  ChatEventMessageEdited.fromJson(Map<String, dynamic> json) {
    this.oldMessage =
        Message.fromJson(json['old_message'] ?? <String, dynamic>{});
    this.newMessage =
        Message.fromJson(json['new_message'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'old_message': this.oldMessage.toJson(),
      'new_message': this.newMessage.toJson()
    };
  }

  static const String CONSTRUCTOR = 'chatEventMessageEdited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageDeleted implements ChatEventAction {
  Message message;

  /// A message was deleted.
  ///[message] Deleted message
  ChatEventMessageDeleted({this.message});

  /// Parse from a json
  ChatEventMessageDeleted.fromJson(Map<String, dynamic> json) {
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'message': this.message.toJson()};
  }

  static const String CONSTRUCTOR = 'chatEventMessageDeleted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessagePinned implements ChatEventAction {
  Message message;

  /// A message was pinned.
  ///[message] Pinned message
  ChatEventMessagePinned({this.message});

  /// Parse from a json
  ChatEventMessagePinned.fromJson(Map<String, dynamic> json) {
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'message': this.message.toJson()};
  }

  static const String CONSTRUCTOR = 'chatEventMessagePinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMessageUnpinned implements ChatEventAction {
  /// A message was unpinned.
  ///
  ChatEventMessageUnpinned();

  /// Parse from a json
  ChatEventMessageUnpinned.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'chatEventMessageUnpinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberJoined implements ChatEventAction {
  /// A new member joined the chat.
  ///
  ChatEventMemberJoined();

  /// Parse from a json
  ChatEventMemberJoined.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'chatEventMemberJoined';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberLeft implements ChatEventAction {
  /// A member left the chat.
  ///
  ChatEventMemberLeft();

  /// Parse from a json
  ChatEventMemberLeft.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'chatEventMemberLeft';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberInvited implements ChatEventAction {
  int userId;
  var status;

  /// A new chat member was invited.
  ///[userId] New member user identifier .
  /// [status] New member status
  ChatEventMemberInvited({this.userId, this.status});

  /// Parse from a json
  ChatEventMemberInvited.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
    this.status =
        ChatMemberStatus.fromJson(json['status'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'user_id': this.userId,
      'status': this.status.toJson()
    };
  }

  static const String CONSTRUCTOR = 'chatEventMemberInvited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberPromoted implements ChatEventAction {
  int userId;
  var oldStatus;
  var newStatus;

  /// A chat member has gained.
  ///
  ChatEventMemberPromoted({this.userId, this.oldStatus, this.newStatus});

  /// Parse from a json
  ChatEventMemberPromoted.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
    this.oldStatus =
        ChatMemberStatus.fromJson(json['old_status'] ?? <String, dynamic>{});
    this.newStatus =
        ChatMemberStatus.fromJson(json['new_status'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'user_id': this.userId,
      'old_status': this.oldStatus.toJson(),
      'new_status': this.newStatus.toJson()
    };
  }

  static const String CONSTRUCTOR = 'chatEventMemberPromoted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventMemberRestricted implements ChatEventAction {
  int userId;
  var oldStatus;
  var newStatus;

  /// A chat member was restricted.
  ///
  ChatEventMemberRestricted({this.userId, this.oldStatus, this.newStatus});

  /// Parse from a json
  ChatEventMemberRestricted.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
    this.oldStatus =
        ChatMemberStatus.fromJson(json['old_status'] ?? <String, dynamic>{});
    this.newStatus =
        ChatMemberStatus.fromJson(json['new_status'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'user_id': this.userId,
      'old_status': this.oldStatus.toJson(),
      'new_status': this.newStatus.toJson()
    };
  }

  static const String CONSTRUCTOR = 'chatEventMemberRestricted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventTitleChanged implements ChatEventAction {
  String oldTitle;
  String newTitle;

  /// The chat title was changed.
  ///[oldTitle] Previous chat title .
  /// [newTitle] New chat title
  ChatEventTitleChanged({this.oldTitle, this.newTitle});

  /// Parse from a json
  ChatEventTitleChanged.fromJson(Map<String, dynamic> json) {
    this.oldTitle = json['old_title'];
    this.newTitle = json['new_title'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'old_title': this.oldTitle,
      'new_title': this.newTitle
    };
  }

  static const String CONSTRUCTOR = 'chatEventTitleChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventDescriptionChanged implements ChatEventAction {
  String oldDescription;
  String newDescription;

  /// The chat description was changed.
  ///[oldDescription] Previous chat description .
  /// [newDescription] New chat description
  ChatEventDescriptionChanged({this.oldDescription, this.newDescription});

  /// Parse from a json
  ChatEventDescriptionChanged.fromJson(Map<String, dynamic> json) {
    this.oldDescription = json['old_description'];
    this.newDescription = json['new_description'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'old_description': this.oldDescription,
      'new_description': this.newDescription
    };
  }

  static const String CONSTRUCTOR = 'chatEventDescriptionChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventUsernameChanged implements ChatEventAction {
  String oldUsername;
  String newUsername;

  /// The chat username was changed.
  ///[oldUsername] Previous chat username .
  /// [newUsername] New chat username
  ChatEventUsernameChanged({this.oldUsername, this.newUsername});

  /// Parse from a json
  ChatEventUsernameChanged.fromJson(Map<String, dynamic> json) {
    this.oldUsername = json['old_username'];
    this.newUsername = json['new_username'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'old_username': this.oldUsername,
      'new_username': this.newUsername
    };
  }

  static const String CONSTRUCTOR = 'chatEventUsernameChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventPhotoChanged implements ChatEventAction {
  ChatPhoto oldPhoto;
  ChatPhoto newPhoto;

  /// The chat photo was changed.
  ///[oldPhoto] Previous chat photo value; may be null .
  /// [newPhoto] New chat photo value; may be null
  ChatEventPhotoChanged({this.oldPhoto, this.newPhoto});

  /// Parse from a json
  ChatEventPhotoChanged.fromJson(Map<String, dynamic> json) {
    this.oldPhoto =
        ChatPhoto.fromJson(json['old_photo'] ?? <String, dynamic>{});
    this.newPhoto =
        ChatPhoto.fromJson(json['new_photo'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'old_photo': this.oldPhoto.toJson(),
      'new_photo': this.newPhoto.toJson()
    };
  }

  static const String CONSTRUCTOR = 'chatEventPhotoChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventInvitesToggled implements ChatEventAction {
  bool anyoneCanInvite;

  /// The anyone_can_invite setting of a supergroup chat was toggled.
  ///[anyoneCanInvite] New value of anyone_can_invite
  ChatEventInvitesToggled({this.anyoneCanInvite});

  /// Parse from a json
  ChatEventInvitesToggled.fromJson(Map<String, dynamic> json) {
    this.anyoneCanInvite = json['anyone_can_invite'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'anyone_can_invite': this.anyoneCanInvite};
  }

  static const String CONSTRUCTOR = 'chatEventInvitesToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventSignMessagesToggled implements ChatEventAction {
  bool signMessages;

  /// The sign_messages setting of a channel was toggled.
  ///[signMessages] New value of sign_messages
  ChatEventSignMessagesToggled({this.signMessages});

  /// Parse from a json
  ChatEventSignMessagesToggled.fromJson(Map<String, dynamic> json) {
    this.signMessages = json['sign_messages'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'sign_messages': this.signMessages};
  }

  static const String CONSTRUCTOR = 'chatEventSignMessagesToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventStickerSetChanged implements ChatEventAction {
  int oldStickerSetId;
  int newStickerSetId;

  /// The supergroup sticker set was changed.
  ///[oldStickerSetId] Previous identifier of the chat sticker set; 0 if none .
  /// [newStickerSetId] New identifier of the chat sticker set; 0 if none
  ChatEventStickerSetChanged({this.oldStickerSetId, this.newStickerSetId});

  /// Parse from a json
  ChatEventStickerSetChanged.fromJson(Map<String, dynamic> json) {
    this.oldStickerSetId = json['old_sticker_set_id'];
    this.newStickerSetId = json['new_sticker_set_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'old_sticker_set_id': this.oldStickerSetId,
      'new_sticker_set_id': this.newStickerSetId
    };
  }

  static const String CONSTRUCTOR = 'chatEventStickerSetChanged';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatEventIsAllHistoryAvailableToggled implements ChatEventAction {
  bool isAllHistoryAvailable;

  /// The is_all_history_available setting of a supergroup was toggled.
  ///[isAllHistoryAvailable] New value of is_all_history_available
  ChatEventIsAllHistoryAvailableToggled({this.isAllHistoryAvailable});

  /// Parse from a json
  ChatEventIsAllHistoryAvailableToggled.fromJson(Map<String, dynamic> json) {
    this.isAllHistoryAvailable = json['is_all_history_available'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'is_all_history_available': this.isAllHistoryAvailable
    };
  }

  static const String CONSTRUCTOR = 'chatEventIsAllHistoryAvailableToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}
