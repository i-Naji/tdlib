part of '../tdapi.dart';

class UserPrivacySettingRules extends TdObject {
  List<UserPrivacySettingRule> rules;
  dynamic extra;

  /// A list of privacy rules. Rules are matched in the specified order. The first matched rule defines the privacy setting for a given user. If no rule matches, the action is not allowed. 
  /// [rules] A list of rules
  UserPrivacySettingRules({this.rules});

  /// Parse from a json
  UserPrivacySettingRules.fromJson(Map<String, dynamic> json)  {
    this.rules = List<UserPrivacySettingRule>.from((json['rules'] ?? []).map((item) => UserPrivacySettingRule.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "rules": this.rules.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRules';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}