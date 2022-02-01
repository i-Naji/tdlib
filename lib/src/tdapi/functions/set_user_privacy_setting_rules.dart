part of '../tdapi.dart';

class SetUserPrivacySettingRules extends TdFunction {

  /// Changes user privacy settings
  const SetUserPrivacySettingRules({
    required this.setting,
    required this.rules,
  });
  
  /// [setting] The privacy setting 
  final UserPrivacySetting setting;

  /// [rules] The new privacy rules
  final UserPrivacySettingRules rules;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "setting": setting.toJson(),
      "rules": rules.toJson(),
      "@extra": extra,
    };
  }
  
  SetUserPrivacySettingRules copyWith({
    UserPrivacySetting? setting,
    UserPrivacySettingRules? rules,
  }) => SetUserPrivacySettingRules(
    setting: setting ?? this.setting,
    rules: rules ?? this.rules,
  );

  static const CONSTRUCTOR = 'setUserPrivacySettingRules';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
