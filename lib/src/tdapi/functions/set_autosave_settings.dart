part of '../tdapi.dart';

class SetAutosaveSettings extends TdFunction {
  /// Sets autosave settings for the given scope. The method is guaranteed to work only after at least one call to getAutosaveSettings
  const SetAutosaveSettings({
    required this.scope,
    this.settings,
  });

  /// [scope] Autosave settings scope
  final AutosaveSettingsScope scope;

  /// [settings] New autosave settings for the scope; pass null to set autosave settings to default
  final ScopeAutosaveSettings? settings;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "scope": scope.toJson(),
      "settings": settings?.toJson(),
      "@extra": extra,
    };
  }

  SetAutosaveSettings copyWith({
    AutosaveSettingsScope? scope,
    ScopeAutosaveSettings? settings,
  }) =>
      SetAutosaveSettings(
        scope: scope ?? this.scope,
        settings: settings ?? this.settings,
      );

  static const CONSTRUCTOR = 'setAutosaveSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
