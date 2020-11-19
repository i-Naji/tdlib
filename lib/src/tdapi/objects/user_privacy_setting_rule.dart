part of '../tdapi.dart';

class UserPrivacySettingRule extends TdObject {
  /// Represents a single rule for managing privacy settings
  UserPrivacySettingRule();

  /// a UserPrivacySettingRule return type can be :
  /// * UserPrivacySettingRuleAllowAll
  /// * UserPrivacySettingRuleAllowContacts
  /// * UserPrivacySettingRuleAllowUsers
  /// * UserPrivacySettingRuleAllowChatMembers
  /// * UserPrivacySettingRuleRestrictAll
  /// * UserPrivacySettingRuleRestrictContacts
  /// * UserPrivacySettingRuleRestrictUsers
  /// * UserPrivacySettingRuleRestrictChatMembers
  factory UserPrivacySettingRule.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UserPrivacySettingRuleAllowAll.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowAll.fromJson(json);
      case UserPrivacySettingRuleAllowContacts.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowContacts.fromJson(json);
      case UserPrivacySettingRuleAllowUsers.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowUsers.fromJson(json);
      case UserPrivacySettingRuleAllowChatMembers.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowChatMembers.fromJson(json);
      case UserPrivacySettingRuleRestrictAll.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictAll.fromJson(json);
      case UserPrivacySettingRuleRestrictContacts.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictContacts.fromJson(json);
      case UserPrivacySettingRuleRestrictUsers.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictUsers.fromJson(json);
      case UserPrivacySettingRuleRestrictChatMembers.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictChatMembers.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'userPrivacySettingRule';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingRuleAllowAll extends UserPrivacySettingRule {
  /// A rule to allow all users to do something
  UserPrivacySettingRuleAllowAll();

  /// Parse from a json
  UserPrivacySettingRuleAllowAll.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowAll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingRuleAllowContacts extends UserPrivacySettingRule {
  /// A rule to allow all of a user's contacts to do something
  UserPrivacySettingRuleAllowContacts();

  /// Parse from a json
  UserPrivacySettingRuleAllowContacts.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingRuleAllowUsers extends UserPrivacySettingRule {
  /// A rule to allow certain specified users to do something
  UserPrivacySettingRuleAllowUsers({this.userIds});

  /// [userIds] The user identifiers, total number of users in all rules must not exceed 1000
  List<int> userIds;

  /// Parse from a json
  UserPrivacySettingRuleAllowUsers.fromJson(Map<String, dynamic> json) {
    this.userIds =
        List<int>.from((json['user_ids'] ?? []).map((item) => item).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": this.userIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowUsers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingRuleAllowChatMembers extends UserPrivacySettingRule {
  /// A rule to allow all members of certain specified basic groups and supergroups to doing something
  UserPrivacySettingRuleAllowChatMembers({this.chatIds});

  /// [chatIds] The chat identifiers, total number of chats in all rules must not exceed 20
  List<int> chatIds;

  /// Parse from a json
  UserPrivacySettingRuleAllowChatMembers.fromJson(Map<String, dynamic> json) {
    this.chatIds =
        List<int>.from((json['chat_ids'] ?? []).map((item) => item).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_ids": this.chatIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowChatMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingRuleRestrictAll extends UserPrivacySettingRule {
  /// A rule to restrict all users from doing something
  UserPrivacySettingRuleRestrictAll();

  /// Parse from a json
  UserPrivacySettingRuleRestrictAll.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictAll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingRuleRestrictContacts extends UserPrivacySettingRule {
  /// A rule to restrict all contacts of a user from doing something
  UserPrivacySettingRuleRestrictContacts();

  /// Parse from a json
  UserPrivacySettingRuleRestrictContacts.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingRuleRestrictUsers extends UserPrivacySettingRule {
  /// A rule to restrict all specified users from doing something
  UserPrivacySettingRuleRestrictUsers({this.userIds});

  /// [userIds] The user identifiers, total number of users in all rules must not exceed 1000
  List<int> userIds;

  /// Parse from a json
  UserPrivacySettingRuleRestrictUsers.fromJson(Map<String, dynamic> json) {
    this.userIds =
        List<int>.from((json['user_ids'] ?? []).map((item) => item).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": this.userIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictUsers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingRuleRestrictChatMembers extends UserPrivacySettingRule {
  /// A rule to restrict all members of specified basic groups and supergroups from doing something
  UserPrivacySettingRuleRestrictChatMembers({this.chatIds});

  /// [chatIds] The chat identifiers, total number of chats in all rules must not exceed 20
  List<int> chatIds;

  /// Parse from a json
  UserPrivacySettingRuleRestrictChatMembers.fromJson(
      Map<String, dynamic> json) {
    this.chatIds =
        List<int>.from((json['chat_ids'] ?? []).map((item) => item).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_ids": this.chatIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictChatMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
