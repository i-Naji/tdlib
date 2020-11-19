part of '../tdapi.dart';

class AutoDownloadSettingsPresets extends TdObject {
  /// Contains auto-download settings presets for the user
  AutoDownloadSettingsPresets({this.low, this.medium, this.high});

  /// [low] Preset with lowest settings; supposed to be used by default when roaming
  AutoDownloadSettings low;

  /// [medium] Preset with medium settings; supposed to be used by default when using mobile data
  AutoDownloadSettings medium;

  /// [high] Preset with highest settings; supposed to be used by default when connected on Wi-Fi
  AutoDownloadSettings high;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  AutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json) {
    this.low =
        AutoDownloadSettings.fromJson(json['low'] ?? <String, dynamic>{});
    this.medium =
        AutoDownloadSettings.fromJson(json['medium'] ?? <String, dynamic>{});
    this.high =
        AutoDownloadSettings.fromJson(json['high'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "low": this.low == null ? null : this.low.toJson(),
      "medium": this.medium == null ? null : this.medium.toJson(),
      "high": this.high == null ? null : this.high.toJson(),
    };
  }

  static const CONSTRUCTOR = 'autoDownloadSettingsPresets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
