part of '../tdapi.dart';

class AutoDownloadSettingsPresets extends TdObject {

  /// Contains auto-download settings presets for the current user
  const AutoDownloadSettingsPresets({
    required this.low,
    required this.medium,
    required this.high,
    this.extra,
    this.clientId,
  });
  
  /// [low] Preset with lowest settings; supposed to be used by default when roaming
  final AutoDownloadSettings low;

  /// [medium] Preset with medium settings; supposed to be used by default when using mobile data
  final AutoDownloadSettings medium;

  /// [high] Preset with highest settings; supposed to be used by default when connected on Wi-Fi
  final AutoDownloadSettings high;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json) => AutoDownloadSettingsPresets(
    low: AutoDownloadSettings.fromJson(json['low']),
    medium: AutoDownloadSettings.fromJson(json['medium']),
    high: AutoDownloadSettings.fromJson(json['high']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "low": low.toJson(),
      "medium": medium.toJson(),
      "high": high.toJson(),
    };
  }
  
  AutoDownloadSettingsPresets copyWith({
    AutoDownloadSettings? low,
    AutoDownloadSettings? medium,
    AutoDownloadSettings? high,
    dynamic extra,
    int? clientId,
  }) => AutoDownloadSettingsPresets(
    low: low ?? this.low,
    medium: medium ?? this.medium,
    high: high ?? this.high,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'autoDownloadSettingsPresets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
