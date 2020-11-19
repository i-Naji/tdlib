part of '../tdapi.dart';

class GetUserPrivacySettingRules extends TdFunction {
  /// Returns the current privacy settings
  GetUserPrivacySettingRules({this.setting});

  /// [setting] The privacy setting
  UserPrivacySetting setting;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetUserPrivacySettingRules.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "setting": this.setting == null ? null : this.setting.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getUserPrivacySettingRules';

  @override
  String getConstructor() => CONSTRUCTOR;
}
