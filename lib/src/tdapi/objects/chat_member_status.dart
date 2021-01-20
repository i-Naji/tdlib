part of '../tdapi.dart';

class ChatMemberStatus extends TdObject {
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
    switch (json["@type"]) {
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

  static const CONSTRUCTOR = 'chatMemberStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusCreator extends ChatMemberStatus {
  /// The user is the owner of a chat and has all the administrator privileges
  ChatMemberStatusCreator({this.customTitle, this.isAnonymous, this.isMember});

  /// [customTitle] A custom title of the owner; 0-16 characters without emojis; applicable to supergroups only
  String customTitle;

  /// [isAnonymous] True, if the creator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only
  bool isAnonymous;

  /// [isMember] True, if the user is a member of the chat
  bool isMember;

  /// Parse from a json
  ChatMemberStatusCreator.fromJson(Map<String, dynamic> json) {
    this.customTitle = json['custom_title'];
    this.isAnonymous = json['is_anonymous'];
    this.isMember = json['is_member'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "custom_title": this.customTitle,
      "is_anonymous": this.isAnonymous,
      "is_member": this.isMember,
    };
  }

  static const CONSTRUCTOR = 'chatMemberStatusCreator';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusAdministrator extends ChatMemberStatus {
  /// The user is a member of a chat and has some additional privileges. In basic groups, administrators can edit and delete messages sent by others, add new members, ban unprivileged members, and manage voice chats. In supergroups and channels, there are more detailed options for administrator privileges
  ChatMemberStatusAdministrator(
      {this.customTitle,
      this.canBeEdited,
      this.canChangeInfo,
      this.canPostMessages,
      this.canEditMessages,
      this.canDeleteMessages,
      this.canInviteUsers,
      this.canRestrictMembers,
      this.canPinMessages,
      this.canPromoteMembers,
      this.canManageVoiceChats,
      this.isAnonymous});

  /// [customTitle] A custom title of the administrator; 0-16 characters without emojis; applicable to supergroups only
  String customTitle;

  /// [canBeEdited] True, if the current user can edit the administrator privileges for the called user
  bool canBeEdited;

  /// [canChangeInfo] True, if the administrator can change the chat title, photo, and other settings
  bool canChangeInfo;

  /// [canPostMessages] True, if the administrator can create channel posts; applicable to channels only
  bool canPostMessages;

  /// [canEditMessages] True, if the administrator can edit messages of other users and pin messages; applicable to channels only
  bool canEditMessages;

  /// [canDeleteMessages] True, if the administrator can delete messages of other users
  bool canDeleteMessages;

  /// [canInviteUsers] True, if the administrator can invite new users to the chat
  bool canInviteUsers;

  /// [canRestrictMembers] True, if the administrator can restrict, ban, or unban chat members
  bool canRestrictMembers;

  /// [canPinMessages] True, if the administrator can pin messages; applicable to groups only
  bool canPinMessages;

  /// [canPromoteMembers] True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that were directly or indirectly promoted by them
  bool canPromoteMembers;

  /// [canManageVoiceChats] True, if the administrator can manage voice chats; applicable to groups only
  bool canManageVoiceChats;

  /// [isAnonymous] True, if the administrator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only
  bool isAnonymous;

  /// Parse from a json
  ChatMemberStatusAdministrator.fromJson(Map<String, dynamic> json) {
    this.customTitle = json['custom_title'];
    this.canBeEdited = json['can_be_edited'];
    this.canChangeInfo = json['can_change_info'];
    this.canPostMessages = json['can_post_messages'];
    this.canEditMessages = json['can_edit_messages'];
    this.canDeleteMessages = json['can_delete_messages'];
    this.canInviteUsers = json['can_invite_users'];
    this.canRestrictMembers = json['can_restrict_members'];
    this.canPinMessages = json['can_pin_messages'];
    this.canPromoteMembers = json['can_promote_members'];
    this.canManageVoiceChats = json['can_manage_voice_chats'];
    this.isAnonymous = json['is_anonymous'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "custom_title": this.customTitle,
      "can_be_edited": this.canBeEdited,
      "can_change_info": this.canChangeInfo,
      "can_post_messages": this.canPostMessages,
      "can_edit_messages": this.canEditMessages,
      "can_delete_messages": this.canDeleteMessages,
      "can_invite_users": this.canInviteUsers,
      "can_restrict_members": this.canRestrictMembers,
      "can_pin_messages": this.canPinMessages,
      "can_promote_members": this.canPromoteMembers,
      "can_manage_voice_chats": this.canManageVoiceChats,
      "is_anonymous": this.isAnonymous,
    };
  }

  static const CONSTRUCTOR = 'chatMemberStatusAdministrator';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusMember extends ChatMemberStatus {
  /// The user is a member of a chat, without any additional privileges or restrictions
  ChatMemberStatusMember();

  /// Parse from a json
  ChatMemberStatusMember.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMemberStatusMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusRestricted extends ChatMemberStatus {
  /// The user is under certain restrictions in the chat. Not supported in basic groups and channels
  ChatMemberStatusRestricted(
      {this.isMember, this.restrictedUntilDate, this.permissions});

  /// [isMember] True, if the user is a member of the chat
  bool isMember;

  /// [restrictedUntilDate] Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if never. If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is considered to be restricted forever
  int restrictedUntilDate;

  /// [permissions] User permissions in the chat
  ChatPermissions permissions;

  /// Parse from a json
  ChatMemberStatusRestricted.fromJson(Map<String, dynamic> json) {
    this.isMember = json['is_member'];
    this.restrictedUntilDate = json['restricted_until_date'];
    this.permissions =
        ChatPermissions.fromJson(json['permissions'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_member": this.isMember,
      "restricted_until_date": this.restrictedUntilDate,
      "permissions":
          this.permissions == null ? null : this.permissions.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatMemberStatusRestricted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusLeft extends ChatMemberStatus {
  /// The user is not a chat member
  ChatMemberStatusLeft();

  /// Parse from a json
  ChatMemberStatusLeft.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMemberStatusLeft';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMemberStatusBanned extends ChatMemberStatus {
  /// The user was banned (and hence is not a member of the chat). Implies the user can't return to the chat or view messages
  ChatMemberStatusBanned({this.bannedUntilDate});

  /// [bannedUntilDate] Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever
  int bannedUntilDate;

  /// Parse from a json
  ChatMemberStatusBanned.fromJson(Map<String, dynamic> json) {
    this.bannedUntilDate = json['banned_until_date'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "banned_until_date": this.bannedUntilDate,
    };
  }

  static const CONSTRUCTOR = 'chatMemberStatusBanned';

  @override
  String getConstructor() => CONSTRUCTOR;
}
