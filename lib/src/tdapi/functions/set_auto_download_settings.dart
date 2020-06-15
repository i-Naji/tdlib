part of '../tdapi.dart';

class SetAutoDownloadSettings extends TdFunction {
  AutoDownloadSettings settings;
  NetworkType type;
  dynamic extra;

  /// Sets auto-download settings. 
  /// [settings] New user auto-download settings . 
  /// [type] Type of the network for which the new settings are applied
  SetAutoDownloadSettings({this.settings,
    this.type});

  /// Parse from a json
  SetAutoDownloadSettings.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "settings": this.settings.toJson(),
      "type": this.type.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setAutoDownloadSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}