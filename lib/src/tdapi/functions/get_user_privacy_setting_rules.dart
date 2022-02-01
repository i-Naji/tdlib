part of '../tdapi.dart';

class GetUserPrivacySettingRules extends TdFunction {

  /// Returns the current privacy settings
  const GetUserPrivacySettingRules({
    required this.setting,
  });
  
  /// [setting] The privacy setting
  final UserPrivacySetting setting;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "setting": setting.toJson(),
      "@extra": extra,
    };
  }
  
  GetUserPrivacySettingRules copyWith({
    UserPrivacySetting? setting,
  }) => GetUserPrivacySettingRules(
    setting: setting ?? this.setting,
  );

  static const CONSTRUCTOR = 'getUserPrivacySettingRules';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
