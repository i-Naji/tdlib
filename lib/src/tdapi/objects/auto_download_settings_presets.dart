part of '../tdapi.dart';

class AutoDownloadSettingsPresets extends TdObject {
  AutoDownloadSettings low;
  AutoDownloadSettings medium;
  AutoDownloadSettings high;
  dynamic extra;

  /// Contains auto-download settings presets for the user. 
  /// [low] Preset with lowest settings; supposed to be used by default when roaming. 
  /// [medium] Preset with medium settings; supposed to be used by default when using mobile data. 
  /// [high] Preset with highest settings; supposed to be used by default when connected on Wi-Fi
  AutoDownloadSettingsPresets({this.low,
    this.medium,
    this.high});

  /// Parse from a json
  AutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json)  {
    this.low = AutoDownloadSettings.fromJson(json['low'] ?? <String, dynamic>{});
    this.medium = AutoDownloadSettings.fromJson(json['medium'] ?? <String, dynamic>{});
    this.high = AutoDownloadSettings.fromJson(json['high'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "low": this.low.toJson(),
      "medium": this.medium.toJson(),
      "high": this.high.toJson(),
    };
  }

  static const CONSTRUCTOR = 'autoDownloadSettingsPresets';
}