part of '../tdapi.dart';

class User extends TdObject {
  /// Represents a user
  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.usernames,
    required this.phoneNumber,
    required this.status,
    this.profilePhoto,
    this.emojiStatus,
    required this.isContact,
    required this.isMutualContact,
    required this.isCloseFriend,
    required this.isVerified,
    required this.isPremium,
    required this.isSupport,
    required this.restrictionReason,
    required this.isScam,
    required this.isFake,
    required this.hasActiveStories,
    required this.hasUnreadActiveStories,
    required this.haveAccess,
    required this.type,
    required this.languageCode,
    required this.addedToAttachmentMenu,
    this.extra,
    this.clientId,
  });

  /// [id] User identifier
  final int id;

  /// [firstName] First name of the user
  final String firstName;

  /// [lastName] Last name of the user
  final String lastName;

  /// [usernames] Usernames of the user; may be null
  final Usernames? usernames;

  /// [phoneNumber] Phone number of the user
  final String phoneNumber;

  /// [status] Current online status of the user
  final UserStatus status;

  /// [profilePhoto] Profile photo of the user; may be null
  final ProfilePhoto? profilePhoto;

  /// [emojiStatus] Emoji status to be shown instead of the default Telegram Premium badge; may be null. For Telegram Premium users only
  final EmojiStatus? emojiStatus;

  /// [isContact] The user is a contact of the current user
  final bool isContact;

  /// [isMutualContact] The user is a contact of the current user and the current user is a contact of the user
  final bool isMutualContact;

  /// [isCloseFriend] The user is a close friend of the current user; implies that the user is a contact
  final bool isCloseFriend;

  /// [isVerified] True, if the user is verified
  final bool isVerified;

  /// [isPremium] True, if the user is a Telegram Premium user
  final bool isPremium;

  /// [isSupport] True, if the user is Telegram support account
  final bool isSupport;

  /// [restrictionReason] If non-empty, it contains a human-readable description of the reason why access to this user must be restricted
  final String restrictionReason;

  /// [isScam] True, if many users reported this user as a scam
  final bool isScam;

  /// [isFake] True, if many users reported this user as a fake account
  final bool isFake;

  /// [hasActiveStories] True, if the user has non-expired stories available to the current user
  final bool hasActiveStories;

  /// [hasUnreadActiveStories] True, if the user has unread non-expired stories available to the current user
  final bool hasUnreadActiveStories;

  /// [haveAccess] If false, the user is inaccessible, and the only information known about the user is inside this class. Identifier of the user can't be passed to any method
  final bool haveAccess;

  /// [type] Type of the user
  final UserType type;

  /// [languageCode] IETF language tag of the user's language; only available to bots
  final String languageCode;

  /// [addedToAttachmentMenu] True, if the user added the current bot to attachment menu; only available to bots
  final bool addedToAttachmentMenu;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        usernames: json['usernames'] == null
            ? null
            : Usernames.fromJson(json['usernames']),
        phoneNumber: json['phone_number'],
        status: UserStatus.fromJson(json['status']),
        profilePhoto: json['profile_photo'] == null
            ? null
            : ProfilePhoto.fromJson(json['profile_photo']),
        emojiStatus: json['emoji_status'] == null
            ? null
            : EmojiStatus.fromJson(json['emoji_status']),
        isContact: json['is_contact'],
        isMutualContact: json['is_mutual_contact'],
        isCloseFriend: json['is_close_friend'],
        isVerified: json['is_verified'],
        isPremium: json['is_premium'],
        isSupport: json['is_support'],
        restrictionReason: json['restriction_reason'],
        isScam: json['is_scam'],
        isFake: json['is_fake'],
        hasActiveStories: json['has_active_stories'],
        hasUnreadActiveStories: json['has_unread_active_stories'],
        haveAccess: json['have_access'],
        type: UserType.fromJson(json['type']),
        languageCode: json['language_code'],
        addedToAttachmentMenu: json['added_to_attachment_menu'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "first_name": firstName,
      "last_name": lastName,
      "usernames": usernames?.toJson(),
      "phone_number": phoneNumber,
      "status": status.toJson(),
      "profile_photo": profilePhoto?.toJson(),
      "emoji_status": emojiStatus?.toJson(),
      "is_contact": isContact,
      "is_mutual_contact": isMutualContact,
      "is_close_friend": isCloseFriend,
      "is_verified": isVerified,
      "is_premium": isPremium,
      "is_support": isSupport,
      "restriction_reason": restrictionReason,
      "is_scam": isScam,
      "is_fake": isFake,
      "has_active_stories": hasActiveStories,
      "has_unread_active_stories": hasUnreadActiveStories,
      "have_access": haveAccess,
      "type": type.toJson(),
      "language_code": languageCode,
      "added_to_attachment_menu": addedToAttachmentMenu,
    };
  }

  User copyWith({
    int? id,
    String? firstName,
    String? lastName,
    Usernames? usernames,
    String? phoneNumber,
    UserStatus? status,
    ProfilePhoto? profilePhoto,
    EmojiStatus? emojiStatus,
    bool? isContact,
    bool? isMutualContact,
    bool? isCloseFriend,
    bool? isVerified,
    bool? isPremium,
    bool? isSupport,
    String? restrictionReason,
    bool? isScam,
    bool? isFake,
    bool? hasActiveStories,
    bool? hasUnreadActiveStories,
    bool? haveAccess,
    UserType? type,
    String? languageCode,
    bool? addedToAttachmentMenu,
    dynamic extra,
    int? clientId,
  }) =>
      User(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        usernames: usernames ?? this.usernames,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        status: status ?? this.status,
        profilePhoto: profilePhoto ?? this.profilePhoto,
        emojiStatus: emojiStatus ?? this.emojiStatus,
        isContact: isContact ?? this.isContact,
        isMutualContact: isMutualContact ?? this.isMutualContact,
        isCloseFriend: isCloseFriend ?? this.isCloseFriend,
        isVerified: isVerified ?? this.isVerified,
        isPremium: isPremium ?? this.isPremium,
        isSupport: isSupport ?? this.isSupport,
        restrictionReason: restrictionReason ?? this.restrictionReason,
        isScam: isScam ?? this.isScam,
        isFake: isFake ?? this.isFake,
        hasActiveStories: hasActiveStories ?? this.hasActiveStories,
        hasUnreadActiveStories:
            hasUnreadActiveStories ?? this.hasUnreadActiveStories,
        haveAccess: haveAccess ?? this.haveAccess,
        type: type ?? this.type,
        languageCode: languageCode ?? this.languageCode,
        addedToAttachmentMenu:
            addedToAttachmentMenu ?? this.addedToAttachmentMenu,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'user';

  @override
  String getConstructor() => CONSTRUCTOR;
}
