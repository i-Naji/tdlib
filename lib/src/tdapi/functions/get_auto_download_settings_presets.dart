part of '../tdapi.dart';

class GetAutoDownloadSettingsPresets extends TdFunction {

  /// Returns auto-download settings presets for the current user
  const GetAutoDownloadSettingsPresets();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetAutoDownloadSettingsPresets copyWith() => const GetAutoDownloadSettingsPresets();

  static const CONSTRUCTOR = 'getAutoDownloadSettingsPresets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
