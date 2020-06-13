part of '../tdapi.dart';

class GetAutoDownloadSettingsPresets extends TdFunction {
  dynamic extra;

  /// Returns auto-download settings presets for the current user
  GetAutoDownloadSettingsPresets();

  /// Parse from a json
  GetAutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getAutoDownloadSettingsPresets';
}