part of '../tdapi.dart';

class GetAutoDownloadSettingsPresets extends TdFunction {
  /// Returns auto-download settings presets for the current user
  GetAutoDownloadSettingsPresets();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetAutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getAutoDownloadSettingsPresets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
