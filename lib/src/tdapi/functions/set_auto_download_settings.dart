part of '../tdapi.dart';

class SetAutoDownloadSettings extends TdFunction {

  /// Sets auto-download settings
  const SetAutoDownloadSettings({
    required this.settings,
    required this.type,
  });
  
  /// [settings] New user auto-download settings 
  final AutoDownloadSettings settings;

  /// [type] Type of the network for which the new settings are relevant
  final NetworkType type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "settings": settings.toJson(),
      "type": type.toJson(),
      "@extra": extra,
    };
  }
  
  SetAutoDownloadSettings copyWith({
    AutoDownloadSettings? settings,
    NetworkType? type,
  }) => SetAutoDownloadSettings(
    settings: settings ?? this.settings,
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'setAutoDownloadSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
