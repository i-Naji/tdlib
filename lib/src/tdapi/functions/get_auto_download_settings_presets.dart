part of '../tdapi.dart';

class GetAutoDownloadSettingsPresets extends TdFunction {
  dynamic extra;

  /// Returns auto-download settings presets for the currently logged in user.
  ///
  GetAutoDownloadSettingsPresets();

  /// Parse from a json
  GetAutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getAutoDownloadSettingsPresets";

  @override
  String getConstructor() => CONSTRUCTOR;
}
