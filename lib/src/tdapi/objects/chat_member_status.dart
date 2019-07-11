part of '../tdapi.dart';

class ChatMemberStatus implements TLObject {
  /// Provides information about the status of a member in a chat
  ChatMemberStatus();

  /// a ChatMemberStatus return type can be :
  /// * ChatMemberStatusCreator
  /// * ChatMemberStatusAdministrator
  /// * ChatMemberStatusMember
  /// * ChatMemberStatusRestricted
  /// * ChatMemberStatusLeft
  /// * ChatMemberStatusBanned
  factory ChatMemberStatus.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case ChatMemberStatusCreator.CONSTRUCTOR:
        return ChatMemberStatusCreator.fromJson(json);
      case ChatMemberStatusAdministrator.CONSTRUCTOR:
        return ChatMemberStatusAdministrator.fromJson(json);
      case ChatMemberStatusMember.CONSTRUCTOR:
        return ChatMemberStatusMember.fromJson(json);
      case ChatMemberStatusRestricted.CONSTRUCTOR:
        return ChatMemberStatusRestricted.fromJson(json);
      case ChatMemberStatusLeft.CONSTRUCTOR:
        return ChatMemberStatusLeft.fromJson(json);
      case ChatMemberStatusBanned.CONSTRUCTOR:
        return ChatMemberStatusBanned.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "chatMemberStatus";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusCreator implements ChatMemberStatus {
  bool isMember;

  /// The user is the creator of a chat and has all the administrator privileges.
  ///[isMember] True, if the user is a member of the chat
  ChatMemberStatusCreator({this.isMember});

  /// Parse from a json
  ChatMemberStatusCreator.fromJson(Map<String, dynamic> json) {
    this.isMember = json['is_member'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "is_member": this.isMember};
  }

  static const String CONSTRUCTOR = "chatMemberStatusCreator";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusAdministrator implements ChatMemberStatus {
  bool canBeEdited;
  bool canChangeInfo;
  bool canPostMessages;
  bool canEditMessages;
  bool canDeleteMessages;
  bool canInviteUsers;
  bool canRestrictMembers;
  bool canPinMessages;
  bool canPromoteMembers;

  /// The user is a member of a chat and has some additional privileges. In basic groups, administrators can edit and delete messages sent by others, add new members, and ban unprivileged members. In supergroups and channels, there are more detailed options for administrator privileges.
  ///[canBeEdited] True, if the current user can edit the administrator privileges for the called user.
  /// [canChangeInfo] True, if the administrator can change the chat title, photo, and other settings.
  /// [canPostMessages] True, if the administrator can create channel posts; applicable to channels only.
  /// [canEditMessages] True, if the administrator can edit messages of other users and pin messages; applicable to channels only.
  /// [canDeleteMessages] True, if the administrator can delete messages of other users.
  /// [canInviteUsers] True, if the administrator can invite new users to the chat.
  /// [canRestrictMembers] True, if the administrator can restrict, ban, or unban chat members.
  /// [canPinMessages] True, if the administrator can pin messages; applicable to groups only.
  /// [canPromoteMembers] True, if the administrator can add new administrators with a subset of his own privileges or demote administrators that were directly or indirectly promoted by him
  ChatMemberStatusAdministrator(
      {this.canBeEdited,
      this.canChangeInfo,
      this.canPostMessages,
      this.canEditMessages,
      this.canDeleteMessages,
      this.canInviteUsers,
      this.canRestrictMembers,
      this.canPinMessages,
      this.canPromoteMembers});

  /// Parse from a json
  ChatMemberStatusAdministrator.fromJson(Map<String, dynamic> json) {
    this.canBeEdited = json['can_be_edited'];
    this.canChangeInfo = json['can_change_info'];
    this.canPostMessages = json['can_post_messages'];
    this.canEditMessages = json['can_edit_messages'];
    this.canDeleteMessages = json['can_delete_messages'];
    this.canInviteUsers = json['can_invite_users'];
    this.canRestrictMembers = json['can_restrict_members'];
    this.canPinMessages = json['can_pin_messages'];
    this.canPromoteMembers = json['can_promote_members'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "can_be_edited": this.canBeEdited,
      "can_change_info": this.canChangeInfo,
      "can_post_messages": this.canPostMessages,
      "can_edit_messages": this.canEditMessages,
      "can_delete_messages": this.canDeleteMessages,
      "can_invite_users": this.canInviteUsers,
      "can_restrict_members": this.canRestrictMembers,
      "can_pin_messages": this.canPinMessages,
      "can_promote_members": this.canPromoteMembers
    };
  }

  static const String CONSTRUCTOR = "chatMemberStatusAdministrator";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusMember implements ChatMemberStatus {
  /// The user is a member of a chat, without any additional privileges or restrictions.
  ///
  ChatMemberStatusMember();

  /// Parse from a json
  ChatMemberStatusMember.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "chatMemberStatusMember";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusRestricted implements ChatMemberStatus {
  bool isMember;
  int restrictedUntilDate;
  bool canSendMessages;
  bool canSendMediaMessages;
  bool canSendOtherMessages;
  bool canAddWebPagePreviews;

  /// The user is under certain restrictions in the chat. Not supported in basic groups and channels.
  ///[isMember] True, if the user is a member of the chat.
  /// [restrictedUntilDate] Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if never. If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is considered to be restricted forever.
  /// [canSendMessages] True, if the user can send text messages, contacts, locations, and venues.
  /// [canSendMediaMessages] True, if the user can send audio files, documents, photos, videos, video notes, and voice notes. Implies can_send_messages permissions.
  /// [canSendOtherMessages] True, if the user can send animations, games, and stickers and use inline bots. Implies can_send_media_messages permissions.
  /// [canAddWebPagePreviews] True, if the user may add a web page preview to his messages. Implies can_send_messages permissions
  ChatMemberStatusRestricted(
      {this.isMember,
      this.restrictedUntilDate,
      this.canSendMessages,
      this.canSendMediaMessages,
      this.canSendOtherMessages,
      this.canAddWebPagePreviews});

  /// Parse from a json
  ChatMemberStatusRestricted.fromJson(Map<String, dynamic> json) {
    this.isMember = json['is_member'];
    this.restrictedUntilDate = json['restricted_until_date'];
    this.canSendMessages = json['can_send_messages'];
    this.canSendMediaMessages = json['can_send_media_messages'];
    this.canSendOtherMessages = json['can_send_other_messages'];
    this.canAddWebPagePreviews = json['can_add_web_page_previews'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_member": this.isMember,
      "restricted_until_date": this.restrictedUntilDate,
      "can_send_messages": this.canSendMessages,
      "can_send_media_messages": this.canSendMediaMessages,
      "can_send_other_messages": this.canSendOtherMessages,
      "can_add_web_page_previews": this.canAddWebPagePreviews
    };
  }

  static const String CONSTRUCTOR = "chatMemberStatusRestricted";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusLeft implements ChatMemberStatus {
  /// The user is not a chat member.
  ///
  ChatMemberStatusLeft();

  /// Parse from a json
  ChatMemberStatusLeft.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "chatMemberStatusLeft";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusBanned implements ChatMemberStatus {
  int bannedUntilDate;

  /// The user was banned (and hence is not a member of the chat). Implies the user can't return to the chat or view messages.
  ///[bannedUntilDate] Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever
  ChatMemberStatusBanned({this.bannedUntilDate});

  /// Parse from a json
  ChatMemberStatusBanned.fromJson(Map<String, dynamic> json) {
    this.bannedUntilDate = json['banned_until_date'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "banned_until_date": this.bannedUntilDate};
  }

  static const String CONSTRUCTOR = "chatMemberStatusBanned";

  @override
  String getConstructor() => CONSTRUCTOR;
}
