part of '../tdapi.dart';

class SetUserPrivacySettingRules extends TdFunction {
  /// Changes user privacy settings
  SetUserPrivacySettingRules({this.setting, this.rules});

  /// [setting] The privacy setting
  UserPrivacySetting setting;

  /// [rules] The new privacy rules
  UserPrivacySettingRules rules;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetUserPrivacySettingRules.fromJson(Map<String, dynamic> json);

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
