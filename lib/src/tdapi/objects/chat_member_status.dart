part of '../tdapi.dart';

class ChatMemberStatus extends TdObject {

  /// Provides information about the status of a member in a chat
  const ChatMemberStatus();
  
  /// a ChatMemberStatus return type can be :
  /// * [ChatMemberStatusCreator]
  /// * [ChatMemberStatusAdministrator]
  /// * [ChatMemberStatusMember]
  /// * [ChatMemberStatusRestricted]
  /// * [ChatMemberStatusLeft]
  /// * [ChatMemberStatusBanned]
  factory ChatMemberStatus.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
        return const ChatMemberStatus();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ChatMemberStatus copyWith() => const ChatMemberStatus();

  static const CONSTRUCTOR = 'chatMemberStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatMemberStatusCreator extends ChatMemberStatus {

  /// The user is the owner of the chat and has all the administrator privileges
  const ChatMemberStatusCreator({
    required this.customTitle,
    required this.isAnonymous,
    required this.isMember,
  });
  
  /// [customTitle] A custom title of the owner; 0-16 characters without emojis; applicable to supergroups only
  final String customTitle;

  /// [isAnonymous] True, if the creator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only
  final bool isAnonymous;

  /// [isMember] True, if the user is a member of the chat
  final bool isMember;
  
  /// Parse from a json
  factory ChatMemberStatusCreator.fromJson(Map<String, dynamic> json) => ChatMemberStatusCreator(
    customTitle: json['custom_title'],
    isAnonymous: json['is_anonymous'],
    isMember: json['is_member'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "custom_title": customTitle,
      "is_anonymous": isAnonymous,
      "is_member": isMember,
    };
  }
  
  @override
  ChatMemberStatusCreator copyWith({
    String? customTitle,
    bool? isAnonymous,
    bool? isMember,
  }) => ChatMemberStatusCreator(
    customTitle: customTitle ?? this.customTitle,
    isAnonymous: isAnonymous ?? this.isAnonymous,
    isMember: isMember ?? this.isMember,
  );

  static const CONSTRUCTOR = 'chatMemberStatusCreator';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatMemberStatusAdministrator extends ChatMemberStatus {

  /// The user is a member of the chat and has some additional privileges. In basic groups, administrators can edit and delete messages sent by others, add new members, ban unprivileged members, and manage video chats. In supergroups and channels, there are more detailed options for administrator privileges
  const ChatMemberStatusAdministrator({
    required this.customTitle,
    required this.canBeEdited,
    required this.canManageChat,
    required this.canChangeInfo,
    required this.canPostMessages,
    required this.canEditMessages,
    required this.canDeleteMessages,
    required this.canInviteUsers,
    required this.canRestrictMembers,
    required this.canPinMessages,
    required this.canPromoteMembers,
    required this.canManageVideoChats,
    required this.isAnonymous,
  });
  
  /// [customTitle] A custom title of the administrator; 0-16 characters without emojis; applicable to supergroups only
  final String customTitle;

  /// [canBeEdited] True, if the current user can edit the administrator privileges for the called user
  final bool canBeEdited;

  /// [canManageChat] True, if the administrator can get chat event log, get chat statistics, get message statistics in channels, get channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other privilege; applicable to supergroups and channels only
  final bool canManageChat;

  /// [canChangeInfo] True, if the administrator can change the chat title, photo, and other settings
  final bool canChangeInfo;

  /// [canPostMessages] True, if the administrator can create channel posts; applicable to channels only
  final bool canPostMessages;

  /// [canEditMessages] True, if the administrator can edit messages of other users and pin messages; applicable to channels only
  final bool canEditMessages;

  /// [canDeleteMessages] True, if the administrator can delete messages of other users
  final bool canDeleteMessages;

  /// [canInviteUsers] True, if the administrator can invite new users to the chat
  final bool canInviteUsers;

  /// [canRestrictMembers] True, if the administrator can restrict, ban, or unban chat members; always true for channels
  final bool canRestrictMembers;

  /// [canPinMessages] True, if the administrator can pin messages; applicable to basic groups and supergroups only
  final bool canPinMessages;

  /// [canPromoteMembers] True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that were directly or indirectly promoted by them
  final bool canPromoteMembers;

  /// [canManageVideoChats] True, if the administrator can manage video chats
  final bool canManageVideoChats;

  /// [isAnonymous] True, if the administrator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only
  final bool isAnonymous;
  
  /// Parse from a json
  factory ChatMemberStatusAdministrator.fromJson(Map<String, dynamic> json) => ChatMemberStatusAdministrator(
    customTitle: json['custom_title'],
    canBeEdited: json['can_be_edited'],
    canManageChat: json['can_manage_chat'],
    canChangeInfo: json['can_change_info'],
    canPostMessages: json['can_post_messages'],
    canEditMessages: json['can_edit_messages'],
    canDeleteMessages: json['can_delete_messages'],
    canInviteUsers: json['can_invite_users'],
    canRestrictMembers: json['can_restrict_members'],
    canPinMessages: json['can_pin_messages'],
    canPromoteMembers: json['can_promote_members'],
    canManageVideoChats: json['can_manage_video_chats'],
    isAnonymous: json['is_anonymous'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "custom_title": customTitle,
      "can_be_edited": canBeEdited,
      "can_manage_chat": canManageChat,
      "can_change_info": canChangeInfo,
      "can_post_messages": canPostMessages,
      "can_edit_messages": canEditMessages,
      "can_delete_messages": canDeleteMessages,
      "can_invite_users": canInviteUsers,
      "can_restrict_members": canRestrictMembers,
      "can_pin_messages": canPinMessages,
      "can_promote_members": canPromoteMembers,
      "can_manage_video_chats": canManageVideoChats,
      "is_anonymous": isAnonymous,
    };
  }
  
  @override
  ChatMemberStatusAdministrator copyWith({
    String? customTitle,
    bool? canBeEdited,
    bool? canManageChat,
    bool? canChangeInfo,
    bool? canPostMessages,
    bool? canEditMessages,
    bool? canDeleteMessages,
    bool? canInviteUsers,
    bool? canRestrictMembers,
    bool? canPinMessages,
    bool? canPromoteMembers,
    bool? canManageVideoChats,
    bool? isAnonymous,
  }) => ChatMemberStatusAdministrator(
    customTitle: customTitle ?? this.customTitle,
    canBeEdited: canBeEdited ?? this.canBeEdited,
    canManageChat: canManageChat ?? this.canManageChat,
    canChangeInfo: canChangeInfo ?? this.canChangeInfo,
    canPostMessages: canPostMessages ?? this.canPostMessages,
    canEditMessages: canEditMessages ?? this.canEditMessages,
    canDeleteMessages: canDeleteMessages ?? this.canDeleteMessages,
    canInviteUsers: canInviteUsers ?? this.canInviteUsers,
    canRestrictMembers: canRestrictMembers ?? this.canRestrictMembers,
    canPinMessages: canPinMessages ?? this.canPinMessages,
    canPromoteMembers: canPromoteMembers ?? this.canPromoteMembers,
    canManageVideoChats: canManageVideoChats ?? this.canManageVideoChats,
    isAnonymous: isAnonymous ?? this.isAnonymous,
  );

  static const CONSTRUCTOR = 'chatMemberStatusAdministrator';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatMemberStatusMember extends ChatMemberStatus {

  /// The user is a member of the chat, without any additional privileges or restrictions
  const ChatMemberStatusMember();
  
  /// Parse from a json
  factory ChatMemberStatusMember.fromJson(Map<String, dynamic> json) => const ChatMemberStatusMember();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatMemberStatusMember copyWith() => const ChatMemberStatusMember();

  static const CONSTRUCTOR = 'chatMemberStatusMember';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatMemberStatusRestricted extends ChatMemberStatus {

  /// The user is under certain restrictions in the chat. Not supported in basic groups and channels
  const ChatMemberStatusRestricted({
    required this.isMember,
    required this.restrictedUntilDate,
    required this.permissions,
  });
  
  /// [isMember] True, if the user is a member of the chat
  final bool isMember;

  /// [restrictedUntilDate] Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if never. If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is considered to be restricted forever
  final int restrictedUntilDate;

  /// [permissions] User permissions in the chat
  final ChatPermissions permissions;
  
  /// Parse from a json
  factory ChatMemberStatusRestricted.fromJson(Map<String, dynamic> json) => ChatMemberStatusRestricted(
    isMember: json['is_member'],
    restrictedUntilDate: json['restricted_until_date'],
    permissions: ChatPermissions.fromJson(json['permissions']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_member": isMember,
      "restricted_until_date": restrictedUntilDate,
      "permissions": permissions.toJson(),
    };
  }
  
  @override
  ChatMemberStatusRestricted copyWith({
    bool? isMember,
    int? restrictedUntilDate,
    ChatPermissions? permissions,
  }) => ChatMemberStatusRestricted(
    isMember: isMember ?? this.isMember,
    restrictedUntilDate: restrictedUntilDate ?? this.restrictedUntilDate,
    permissions: permissions ?? this.permissions,
  );

  static const CONSTRUCTOR = 'chatMemberStatusRestricted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatMemberStatusLeft extends ChatMemberStatus {

  /// The user or the chat is not a chat member
  const ChatMemberStatusLeft();
  
  /// Parse from a json
  factory ChatMemberStatusLeft.fromJson(Map<String, dynamic> json) => const ChatMemberStatusLeft();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatMemberStatusLeft copyWith() => const ChatMemberStatusLeft();

  static const CONSTRUCTOR = 'chatMemberStatusLeft';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatMemberStatusBanned extends ChatMemberStatus {

  /// The user or the chat was banned (and hence is not a member of the chat). Implies the user can't return to the chat, view messages, or be used as a participant identifier to join a video chat of the chat
  const ChatMemberStatusBanned({
    required this.bannedUntilDate,
  });
  
  /// [bannedUntilDate] Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever. Always 0 in basic groups
  final int bannedUntilDate;
  
  /// Parse from a json
  factory ChatMemberStatusBanned.fromJson(Map<String, dynamic> json) => ChatMemberStatusBanned(
    bannedUntilDate: json['banned_until_date'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "banned_until_date": bannedUntilDate,
    };
  }
  
  @override
  ChatMemberStatusBanned copyWith({
    int? bannedUntilDate,
  }) => ChatMemberStatusBanned(
    bannedUntilDate: bannedUntilDate ?? this.bannedUntilDate,
  );

  static const CONSTRUCTOR = 'chatMemberStatusBanned';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
