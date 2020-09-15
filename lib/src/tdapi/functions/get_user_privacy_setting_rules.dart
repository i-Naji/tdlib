part of '../tdapi.dart';

class GetUserPrivacySettingRules extends TdFunction {
  UserPrivacySetting setting;
  dynamic extra;

  /// Returns the current privacy settings. 
  /// [setting] The privacy setting
  GetUserPrivacySettingRules({this.setting});

  /// Parse from a json
  GetUserPrivacySettingRules.fromJson(Map<String, dynamic> json) ;

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