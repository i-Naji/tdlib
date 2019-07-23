part of '../tdapi.dart';

class SetUserPrivacySettingRules extends TdFunction {
  var setting;
  UserPrivacySettingRules rules;
  dynamic extra;

  /// Changes user privacy settings.
  ///[setting] The privacy setting .
  /// [rules] The new privacy rules
  SetUserPrivacySettingRules({this.setting, this.rules});

  /// Parse from a json
  SetUserPrivacySettingRules.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "setting": this.setting.toJson(),
      "rules": this.rules.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "setUserPrivacySettingRules";

  @override
  String getConstructor() => CONSTRUCTOR;
}
