part of '../tdapi.dart';

class UserType implements TLObject {
  /// Represents the type of the user. The following types are possible: regular users, deleted users and bots
  UserType();

  /// a UserType return type can be :
  /// * UserTypeRegular
  /// * UserTypeDeleted
  /// * UserTypeBot
  /// * UserTypeUnknown
  factory UserType.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case UserTypeRegular.CONSTRUCTOR:
        return UserTypeRegular.fromJson(json);
      case UserTypeDeleted.CONSTRUCTOR:
        return UserTypeDeleted.fromJson(json);
      case UserTypeBot.CONSTRUCTOR:
        return UserTypeBot.fromJson(json);
      case UserTypeUnknown.CONSTRUCTOR:
        return UserTypeUnknown.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "userType";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserTypeRegular implements UserType {
  /// A regular user.
  ///
  UserTypeRegular();

  /// Parse from a json
  UserTypeRegular.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "userTypeRegular";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserTypeDeleted implements UserType {
  /// A deleted user or deleted bot. No information on the user besides the user_id is available. It is not possible to perform any active actions on this type of user.
  ///
  UserTypeDeleted();

  /// Parse from a json
  UserTypeDeleted.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "userTypeDeleted";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserTypeBot implements UserType {
  bool canJoinGroups;
  bool canReadAllGroupMessages;
  bool isInline;
  String inlineQueryPlaceholder;
  bool needLocation;

  /// A bot (see https.
  ///[canReadAllGroupMessages] True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages.
  /// [isInline] True, if the bot supports inline queries .
  /// [inlineQueryPlaceholder] Placeholder for inline queries (displayed on the client input field) .
  /// [needLocation] True, if the location of the user should be sent with every inline query to this bot
  UserTypeBot(
      {this.canJoinGroups,
      this.canReadAllGroupMessages,
      this.isInline,
      this.inlineQueryPlaceholder,
      this.needLocation});

  /// Parse from a json
  UserTypeBot.fromJson(Map<String, dynamic> json) {
    this.canJoinGroups = json['can_join_groups'];
    this.canReadAllGroupMessages = json['can_read_all_group_messages'];
    this.isInline = json['is_inline'];
    this.inlineQueryPlaceholder = json['inline_query_placeholder'];
    this.needLocation = json['need_location'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "can_join_groups": this.canJoinGroups,
      "can_read_all_group_messages": this.canReadAllGroupMessages,
      "is_inline": this.isInline,
      "inline_query_placeholder": this.inlineQueryPlaceholder,
      "need_location": this.needLocation
    };
  }

  static const String CONSTRUCTOR = "userTypeBot";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserTypeUnknown implements UserType {
  /// No information on the user besides the user_id is available, yet this user has not been deleted. This object is extremely rare and must be handled like a deleted user. It is not possible to perform any actions on users of this type.
  ///
  UserTypeUnknown();

  /// Parse from a json
  UserTypeUnknown.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "userTypeUnknown";

  @override
  String getConstructor() => CONSTRUCTOR;
}
