part of '../tdapi.dart';

class UserFullInfo extends TdObject {

  /// Contains full information about a user
  const UserFullInfo({
    this.photo,
    required this.isBlocked,
    required this.canBeCalled,
    required this.supportsVideoCalls,
    required this.hasPrivateCalls,
    required this.hasPrivateForwards,
    required this.needPhoneNumberPrivacyException,
    required this.bio,
    required this.shareText,
    required this.description,
    required this.groupInCommonCount,
    required this.commands,
    this.extra,
    this.clientId,
  });
  
  /// [photo] User profile photo; may be null
  final ChatPhoto? photo;

  /// [isBlocked] True, if the user is blocked by the current user
  final bool isBlocked;

  /// [canBeCalled] True, if the user can be called
  final bool canBeCalled;

  /// [supportsVideoCalls] True, if a video call can be created with the user
  final bool supportsVideoCalls;

  /// [hasPrivateCalls] True, if the user can't be called due to their privacy settings
  final bool hasPrivateCalls;

  /// [hasPrivateForwards] True, if the user can't be linked in forwarded messages due to their privacy settings
  final bool hasPrivateForwards;

  /// [needPhoneNumberPrivacyException] True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used
  final bool needPhoneNumberPrivacyException;

  /// [bio] A short user bio
  final String bio;

  /// [shareText] For bots, the text that is shown on the bot's profile page and is sent together with the link when users share the bot
  final String shareText;

  /// [description] For bots, the text shown in the chat with the bot if the chat is empty
  final String description;

  /// [groupInCommonCount] Number of group chats where both the other user and the current user are a member; 0 for the current user
  final int groupInCommonCount;

  /// [commands] For bots, list of the bot commands
  final List<BotCommand> commands;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UserFullInfo.fromJson(Map<String, dynamic> json) => UserFullInfo(
    photo: json['photo'] == null ? null : ChatPhoto.fromJson(json['photo']),
    isBlocked: json['is_blocked'],
    canBeCalled: json['can_be_called'],
    supportsVideoCalls: json['supports_video_calls'],
    hasPrivateCalls: json['has_private_calls'],
    hasPrivateForwards: json['has_private_forwards'],
    needPhoneNumberPrivacyException: json['need_phone_number_privacy_exception'],
    bio: json['bio'],
    shareText: json['share_text'],
    description: json['description'],
    groupInCommonCount: json['group_in_common_count'],
    commands: List<BotCommand>.from((json['commands'] ?? []).map((item) => BotCommand.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo?.toJson(),
      "is_blocked": isBlocked,
      "can_be_called": canBeCalled,
      "supports_video_calls": supportsVideoCalls,
      "has_private_calls": hasPrivateCalls,
      "has_private_forwards": hasPrivateForwards,
      "need_phone_number_privacy_exception": needPhoneNumberPrivacyException,
      "bio": bio,
      "share_text": shareText,
      "description": description,
      "group_in_common_count": groupInCommonCount,
      "commands": commands.map((i) => i.toJson()).toList(),
    };
  }
  
  UserFullInfo copyWith({
    ChatPhoto? photo,
    bool? isBlocked,
    bool? canBeCalled,
    bool? supportsVideoCalls,
    bool? hasPrivateCalls,
    bool? hasPrivateForwards,
    bool? needPhoneNumberPrivacyException,
    String? bio,
    String? shareText,
    String? description,
    int? groupInCommonCount,
    List<BotCommand>? commands,
    dynamic extra,
    int? clientId,
  }) => UserFullInfo(
    photo: photo ?? this.photo,
    isBlocked: isBlocked ?? this.isBlocked,
    canBeCalled: canBeCalled ?? this.canBeCalled,
    supportsVideoCalls: supportsVideoCalls ?? this.supportsVideoCalls,
    hasPrivateCalls: hasPrivateCalls ?? this.hasPrivateCalls,
    hasPrivateForwards: hasPrivateForwards ?? this.hasPrivateForwards,
    needPhoneNumberPrivacyException: needPhoneNumberPrivacyException ?? this.needPhoneNumberPrivacyException,
    bio: bio ?? this.bio,
    shareText: shareText ?? this.shareText,
    description: description ?? this.description,
    groupInCommonCount: groupInCommonCount ?? this.groupInCommonCount,
    commands: commands ?? this.commands,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'userFullInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
