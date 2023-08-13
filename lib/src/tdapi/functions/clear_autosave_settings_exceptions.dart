part of '../tdapi.dart';

class ClearAutosaveSettingsExceptions extends TdFunction {
  /// Clears the list of all autosave settings exceptions. The method is guaranteed to work only after at least one call to getAutosaveSettings
  const ClearAutosaveSettingsExceptions();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  ClearAutosaveSettingsExceptions copyWith() =>
      const ClearAutosaveSettingsExceptions();

  static const CONSTRUCTOR = 'clearAutosaveSettingsExceptions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
