part of '../tdapi.dart';

class UserType extends TdObject {

  /// Represents the type of a user. The following types are possible: regular users, deleted users and bots
  const UserType();
  
  /// a UserType return type can be :
  /// * [UserTypeRegular]
  /// * [UserTypeDeleted]
  /// * [UserTypeBot]
  /// * [UserTypeUnknown]
  factory UserType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case UserTypeRegular.CONSTRUCTOR:
        return UserTypeRegular.fromJson(json);
      case UserTypeDeleted.CONSTRUCTOR:
        return UserTypeDeleted.fromJson(json);
      case UserTypeBot.CONSTRUCTOR:
        return UserTypeBot.fromJson(json);
      case UserTypeUnknown.CONSTRUCTOR:
        return UserTypeUnknown.fromJson(json);
      default:
        return const UserType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  UserType copyWith() => const UserType();

  static const CONSTRUCTOR = 'userType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserTypeRegular extends UserType {

  /// A regular user
  const UserTypeRegular();
  
  /// Parse from a json
  factory UserTypeRegular.fromJson(Map<String, dynamic> json) => const UserTypeRegular();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserTypeRegular copyWith() => const UserTypeRegular();

  static const CONSTRUCTOR = 'userTypeRegular';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserTypeDeleted extends UserType {

  /// A deleted user or deleted bot. No information on the user besides the user identifier is available. It is not possible to perform any active actions on this type of user
  const UserTypeDeleted();
  
  /// Parse from a json
  factory UserTypeDeleted.fromJson(Map<String, dynamic> json) => const UserTypeDeleted();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserTypeDeleted copyWith() => const UserTypeDeleted();

  static const CONSTRUCTOR = 'userTypeDeleted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserTypeBot extends UserType {

  /// A bot (see https://core.telegram.org/bots)
  const UserTypeBot({
    required this.canJoinGroups,
    required this.canReadAllGroupMessages,
    required this.isInline,
    required this.inlineQueryPlaceholder,
    required this.needLocation,
  });
  
  /// [canJoinGroups] True, if the bot can be invited to basic group and supergroup chats
  final bool canJoinGroups;

  /// [canReadAllGroupMessages] True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages
  final bool canReadAllGroupMessages;

  /// [isInline] True, if the bot supports inline queries
  final bool isInline;

  /// [inlineQueryPlaceholder] Placeholder for inline queries (displayed on the application input field) 
  final String inlineQueryPlaceholder;

  /// [needLocation] True, if the location of the user is expected to be sent with every inline query to this bot
  final bool needLocation;
  
  /// Parse from a json
  factory UserTypeBot.fromJson(Map<String, dynamic> json) => UserTypeBot(
    canJoinGroups: json['can_join_groups'],
    canReadAllGroupMessages: json['can_read_all_group_messages'],
    isInline: json['is_inline'],
    inlineQueryPlaceholder: json['inline_query_placeholder'],
    needLocation: json['need_location'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "can_join_groups": canJoinGroups,
      "can_read_all_group_messages": canReadAllGroupMessages,
      "is_inline": isInline,
      "inline_query_placeholder": inlineQueryPlaceholder,
      "need_location": needLocation,
    };
  }
  
  @override
  UserTypeBot copyWith({
    bool? canJoinGroups,
    bool? canReadAllGroupMessages,
    bool? isInline,
    String? inlineQueryPlaceholder,
    bool? needLocation,
  }) => UserTypeBot(
    canJoinGroups: canJoinGroups ?? this.canJoinGroups,
    canReadAllGroupMessages: canReadAllGroupMessages ?? this.canReadAllGroupMessages,
    isInline: isInline ?? this.isInline,
    inlineQueryPlaceholder: inlineQueryPlaceholder ?? this.inlineQueryPlaceholder,
    needLocation: needLocation ?? this.needLocation,
  );

  static const CONSTRUCTOR = 'userTypeBot';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class UserTypeUnknown extends UserType {

  /// No information on the user besides the user identifier is available, yet this user has not been deleted. This object is extremely rare and must be handled like a deleted user. It is not possible to perform any actions on users of this type
  const UserTypeUnknown();
  
  /// Parse from a json
  factory UserTypeUnknown.fromJson(Map<String, dynamic> json) => const UserTypeUnknown();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  UserTypeUnknown copyWith() => const UserTypeUnknown();

  static const CONSTRUCTOR = 'userTypeUnknown';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
