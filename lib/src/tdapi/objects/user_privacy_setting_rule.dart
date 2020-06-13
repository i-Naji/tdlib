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
  factory UserPrivacySettingRule.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
    return {
      
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRule';
}

class UserPrivacySettingRuleAllowAll extends UserPrivacySettingRule {
  

  /// A rule to allow all users to do something
  UserPrivacySettingRuleAllowAll();

  /// Parse from a json
  UserPrivacySettingRuleAllowAll.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowAll';
}

class UserPrivacySettingRuleAllowContacts extends UserPrivacySettingRule {
  

  /// A rule to allow all of a user's contacts to do something
  UserPrivacySettingRuleAllowContacts();

  /// Parse from a json
  UserPrivacySettingRuleAllowContacts.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowContacts';
}

class UserPrivacySettingRuleAllowUsers extends UserPrivacySettingRule {
  List<List<int>> userIds;

  /// A rule to allow certain specified users to do something. 
  /// [userIds] The user identifiers, total number of users in all rules must not exceed 1000
  UserPrivacySettingRuleAllowUsers({this.userIds});

  /// Parse from a json
  UserPrivacySettingRuleAllowUsers.fromJson(Map<String, dynamic> json)  {
    this.userIds = List<List<int>>.from((json['user_ids'] ?? []).map((item) => List<int>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": this.userIds.map((i) => i.map((ii) => ii).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowUsers';
}

class UserPrivacySettingRuleAllowChatMembers extends UserPrivacySettingRule {
  List<List<int>> chatIds;

  /// A rule to allow all members of certain specified basic groups and supergroups to doing something. 
  /// [chatIds] The chat identifiers, total number of chats in all rules must not exceed 20
  UserPrivacySettingRuleAllowChatMembers({this.chatIds});

  /// Parse from a json
  UserPrivacySettingRuleAllowChatMembers.fromJson(Map<String, dynamic> json)  {
    this.chatIds = List<List<int>>.from((json['chat_ids'] ?? []).map((item) => List<int>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_ids": this.chatIds.map((i) => i.map((ii) => ii).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowChatMembers';
}

class UserPrivacySettingRuleRestrictAll extends UserPrivacySettingRule {
  

  /// A rule to restrict all users from doing something
  UserPrivacySettingRuleRestrictAll();

  /// Parse from a json
  UserPrivacySettingRuleRestrictAll.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictAll';
}

class UserPrivacySettingRuleRestrictContacts extends UserPrivacySettingRule {
  

  /// A rule to restrict all contacts of a user from doing something
  UserPrivacySettingRuleRestrictContacts();

  /// Parse from a json
  UserPrivacySettingRuleRestrictContacts.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictContacts';
}

class UserPrivacySettingRuleRestrictUsers extends UserPrivacySettingRule {
  List<List<int>> userIds;

  /// A rule to restrict all specified users from doing something. 
  /// [userIds] The user identifiers, total number of users in all rules must not exceed 1000
  UserPrivacySettingRuleRestrictUsers({this.userIds});

  /// Parse from a json
  UserPrivacySettingRuleRestrictUsers.fromJson(Map<String, dynamic> json)  {
    this.userIds = List<List<int>>.from((json['user_ids'] ?? []).map((item) => List<int>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": this.userIds.map((i) => i.map((ii) => ii).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictUsers';
}

class UserPrivacySettingRuleRestrictChatMembers extends UserPrivacySettingRule {
  List<List<int>> chatIds;

  /// A rule to restrict all members of specified basic groups and supergroups from doing something. 
  /// [chatIds] The chat identifiers, total number of chats in all rules must not exceed 20
  UserPrivacySettingRuleRestrictChatMembers({this.chatIds});

  /// Parse from a json
  UserPrivacySettingRuleRestrictChatMembers.fromJson(Map<String, dynamic> json)  {
    this.chatIds = List<List<int>>.from((json['chat_ids'] ?? []).map((item) => List<int>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_ids": this.chatIds.map((i) => i.map((ii) => ii).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictChatMembers';
}