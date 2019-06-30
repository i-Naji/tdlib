part of '../tdapi.dart';

class UserPrivacySettingRule implements TLObject {
  /// Represents a single rule for managing privacy settings
  UserPrivacySettingRule();

  /// a UserPrivacySettingRule return type can be :
  /// * UserPrivacySettingRuleAllowAll
  /// * UserPrivacySettingRuleRestrictUsers
  /// * UserPrivacySettingRuleRestrictContacts
  /// * UserPrivacySettingRuleRestrictAll
  /// * UserPrivacySettingRuleAllowUsers
  /// * UserPrivacySettingRuleAllowContacts
  factory UserPrivacySettingRule.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case UserPrivacySettingRuleAllowAll.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowAll.fromJson(json);
      case UserPrivacySettingRuleRestrictUsers.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictUsers.fromJson(json);
      case UserPrivacySettingRuleRestrictContacts.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictContacts.fromJson(json);
      case UserPrivacySettingRuleRestrictAll.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictAll.fromJson(json);
      case UserPrivacySettingRuleAllowUsers.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowUsers.fromJson(json);
      case UserPrivacySettingRuleAllowContacts.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowContacts.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'userPrivacySettingRule';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingRuleAllowAll implements UserPrivacySettingRule {
  /// A rule to allow all users to do something.
  ///
  UserPrivacySettingRuleAllowAll();

  /// Parse from a json
  UserPrivacySettingRuleAllowAll.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'userPrivacySettingRuleAllowAll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingRuleAllowContacts implements UserPrivacySettingRule {
  /// A rule to allow all of a user's contacts to do something.
  ///
  UserPrivacySettingRuleAllowContacts();

  /// Parse from a json
  UserPrivacySettingRuleAllowContacts.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'userPrivacySettingRuleAllowContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingRuleAllowUsers implements UserPrivacySettingRule {
  List<int> userIds;

  /// A rule to allow certain specified users to do something.
  ///[userIds] The user identifiers
  UserPrivacySettingRuleAllowUsers({this.userIds});

  /// Parse from a json
  UserPrivacySettingRuleAllowUsers.fromJson(Map<String, dynamic> json) {
    this.userIds = json['user_ids'] ?? [];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'user_ids': this.userIds};
  }

  static const String CONSTRUCTOR = 'userPrivacySettingRuleAllowUsers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingRuleRestrictAll implements UserPrivacySettingRule {
  /// A rule to restrict all users from doing something.
  ///
  UserPrivacySettingRuleRestrictAll();

  /// Parse from a json
  UserPrivacySettingRuleRestrictAll.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'userPrivacySettingRuleRestrictAll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingRuleRestrictContacts implements UserPrivacySettingRule {
  /// A rule to restrict all contacts of a user from doing something.
  ///
  UserPrivacySettingRuleRestrictContacts();

  /// Parse from a json
  UserPrivacySettingRuleRestrictContacts.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'userPrivacySettingRuleRestrictContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingRuleRestrictUsers implements UserPrivacySettingRule {
  List<int> userIds;

  /// A rule to restrict all specified users from doing something.
  ///[userIds] The user identifiers
  UserPrivacySettingRuleRestrictUsers({this.userIds});

  /// Parse from a json
  UserPrivacySettingRuleRestrictUsers.fromJson(Map<String, dynamic> json) {
    this.userIds = json['user_ids'] ?? [];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'user_ids': this.userIds};
  }

  static const String CONSTRUCTOR = 'userPrivacySettingRuleRestrictUsers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
