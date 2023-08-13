part of '../tdapi.dart';

class AutosaveSettingsException extends TdObject {
  /// Contains autosave settings for a chat, which overrides default settings for the corresponding scope
  const AutosaveSettingsException({
    required this.chatId,
    required this.settings,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [settings] Autosave settings for the chat
  final ScopeAutosaveSettings settings;

  /// Parse from a json
  factory AutosaveSettingsException.fromJson(Map<String, dynamic> json) =>
      AutosaveSettingsException(
        chatId: json['chat_id'],
        settings: ScopeAutosaveSettings.fromJson(json['settings']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "settings": settings.toJson(),
    };
  }

  AutosaveSettingsException copyWith({
    int? chatId,
    ScopeAutosaveSettings? settings,
  }) =>
      AutosaveSettingsException(
        chatId: chatId ?? this.chatId,
        settings: settings ?? this.settings,
      );

  static const CONSTRUCTOR = 'autosaveSettingsException';

  @override
  String getConstructor() => CONSTRUCTOR;
}
