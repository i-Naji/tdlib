part of '../tdapi.dart';

class SetAutoDownloadSettings extends TdFunction {
  /// Sets auto-download settings
  SetAutoDownloadSettings({this.settings, this.type});

  /// [settings] New user auto-download settings
  AutoDownloadSettings settings;

  /// [type] Type of the network for which the new settings are applied
  NetworkType type;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetAutoDownloadSettings.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "settings": this.settings == null ? null : this.settings.toJson(),
      "type": this.type == null ? null : this.type.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setAutoDownloadSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
