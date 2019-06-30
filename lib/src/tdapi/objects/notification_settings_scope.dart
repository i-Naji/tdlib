part of '../tdapi.dart';

class NotificationSettingsScope implements TLObject {
  /// Describes the types of chats to which notification settings are applied
  NotificationSettingsScope();

  /// a NotificationSettingsScope return type can be :
  /// * NotificationSettingsScopeGroupChats
  /// * NotificationSettingsScopeChannelChats
  /// * NotificationSettingsScopePrivateChats
  factory NotificationSettingsScope.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case NotificationSettingsScopeGroupChats.CONSTRUCTOR:
        return NotificationSettingsScopeGroupChats.fromJson(json);
      case NotificationSettingsScopeChannelChats.CONSTRUCTOR:
        return NotificationSettingsScopeChannelChats.fromJson(json);
      case NotificationSettingsScopePrivateChats.CONSTRUCTOR:
        return NotificationSettingsScopePrivateChats.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'notificationSettingsScope';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationSettingsScopePrivateChats
    implements NotificationSettingsScope {
  /// Notification settings applied to all private and secret chats when the corresponding chat setting has a default value.
  ///
  NotificationSettingsScopePrivateChats();

  /// Parse from a json
  NotificationSettingsScopePrivateChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'notificationSettingsScopePrivateChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationSettingsScopeGroupChats implements NotificationSettingsScope {
  /// Notification settings applied to all basic groups and supergroups when the corresponding chat setting has a default value.
  ///
  NotificationSettingsScopeGroupChats();

  /// Parse from a json
  NotificationSettingsScopeGroupChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'notificationSettingsScopeGroupChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationSettingsScopeChannelChats
    implements NotificationSettingsScope {
  /// Notification settings applied to all channels when the corresponding chat setting has a default value.
  ///
  NotificationSettingsScopeChannelChats();

  /// Parse from a json
  NotificationSettingsScopeChannelChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'notificationSettingsScopeChannelChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
