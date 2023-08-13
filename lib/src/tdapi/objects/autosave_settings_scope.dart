part of '../tdapi.dart';

class AutosaveSettingsScope extends TdObject {
  /// Describes scope of autosave settings
  const AutosaveSettingsScope();

  /// a AutosaveSettingsScope return type can be :
  /// * [AutosaveSettingsScopePrivateChats]
  /// * [AutosaveSettingsScopeGroupChats]
  /// * [AutosaveSettingsScopeChannelChats]
  /// * [AutosaveSettingsScopeChat]
  factory AutosaveSettingsScope.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case AutosaveSettingsScopePrivateChats.CONSTRUCTOR:
        return AutosaveSettingsScopePrivateChats.fromJson(json);
      case AutosaveSettingsScopeGroupChats.CONSTRUCTOR:
        return AutosaveSettingsScopeGroupChats.fromJson(json);
      case AutosaveSettingsScopeChannelChats.CONSTRUCTOR:
        return AutosaveSettingsScopeChannelChats.fromJson(json);
      case AutosaveSettingsScopeChat.CONSTRUCTOR:
        return AutosaveSettingsScopeChat.fromJson(json);
      default:
        return const AutosaveSettingsScope();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  AutosaveSettingsScope copyWith() => const AutosaveSettingsScope();

  static const CONSTRUCTOR = 'autosaveSettingsScope';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AutosaveSettingsScopePrivateChats extends AutosaveSettingsScope {
  /// Autosave settings applied to all private chats without chat-specific settings
  const AutosaveSettingsScopePrivateChats();

  /// Parse from a json
  factory AutosaveSettingsScopePrivateChats.fromJson(
          Map<String, dynamic> json) =>
      const AutosaveSettingsScopePrivateChats();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AutosaveSettingsScopePrivateChats copyWith() =>
      const AutosaveSettingsScopePrivateChats();

  static const CONSTRUCTOR = 'autosaveSettingsScopePrivateChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AutosaveSettingsScopeGroupChats extends AutosaveSettingsScope {
  /// Autosave settings applied to all basic group and supergroup chats without chat-specific settings
  const AutosaveSettingsScopeGroupChats();

  /// Parse from a json
  factory AutosaveSettingsScopeGroupChats.fromJson(Map<String, dynamic> json) =>
      const AutosaveSettingsScopeGroupChats();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AutosaveSettingsScopeGroupChats copyWith() =>
      const AutosaveSettingsScopeGroupChats();

  static const CONSTRUCTOR = 'autosaveSettingsScopeGroupChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AutosaveSettingsScopeChannelChats extends AutosaveSettingsScope {
  /// Autosave settings applied to all channel chats without chat-specific settings
  const AutosaveSettingsScopeChannelChats();

  /// Parse from a json
  factory AutosaveSettingsScopeChannelChats.fromJson(
          Map<String, dynamic> json) =>
      const AutosaveSettingsScopeChannelChats();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AutosaveSettingsScopeChannelChats copyWith() =>
      const AutosaveSettingsScopeChannelChats();

  static const CONSTRUCTOR = 'autosaveSettingsScopeChannelChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AutosaveSettingsScopeChat extends AutosaveSettingsScope {
  /// Autosave settings applied to a chat
  const AutosaveSettingsScopeChat({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// Parse from a json
  factory AutosaveSettingsScopeChat.fromJson(Map<String, dynamic> json) =>
      AutosaveSettingsScopeChat(
        chatId: json['chat_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
    };
  }

  @override
  AutosaveSettingsScopeChat copyWith({
    int? chatId,
  }) =>
      AutosaveSettingsScopeChat(
        chatId: chatId ?? this.chatId,
      );

  static const CONSTRUCTOR = 'autosaveSettingsScopeChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
