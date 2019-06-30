part of '../tdapi.dart';

class UserPrivacySettingRules implements TLObject {
  List rules;
  dynamic extra;

  /// A list of privacy rules. Rules are matched in the specified order. The first matched rule defines the privacy setting for a given user. If no rule matches, the action is not allowed.
  ///[rules] A list of rules
  UserPrivacySettingRules({this.rules});

  /// Parse from a json
  UserPrivacySettingRules.fromJson(Map<String, dynamic> json) {
    this.rules = (json['rules'] ?? [])
        .map((listValue) => UserPrivacySettingRule.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'rules': this.rules.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'userPrivacySettingRules';

  @override
  String getConstructor() => CONSTRUCTOR;
}
