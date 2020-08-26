part of '../tdapi.dart';

class SetUserPrivacySettingRules extends TdFunction {
  UserPrivacySetting setting;
  UserPrivacySettingRules rules;
  dynamic extra;

  /// Changes user privacy settings. 
  /// [setting] The privacy setting . 
  /// [rules] The new privacy rules
  SetUserPrivacySettingRules({this.setting,
    this.rules});

  /// Parse from a json
  SetUserPrivacySettingRules.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "setting": this.setting == null ? null : this.setting.toJson(),
      "rules": this.rules == null ? null : this.rules.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setUserPrivacySettingRules';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}