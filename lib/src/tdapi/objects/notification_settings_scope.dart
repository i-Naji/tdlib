part of '../tdapi.dart';

class NotificationSettingsScope extends TdObject {

  /// Describes the types of chats to which notification settings are relevant
  const NotificationSettingsScope();
  
  /// a NotificationSettingsScope return type can be :
  /// * [NotificationSettingsScopePrivateChats]
  /// * [NotificationSettingsScopeGroupChats]
  /// * [NotificationSettingsScopeChannelChats]
  factory NotificationSettingsScope.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case NotificationSettingsScopePrivateChats.CONSTRUCTOR:
        return NotificationSettingsScopePrivateChats.fromJson(json);
      case NotificationSettingsScopeGroupChats.CONSTRUCTOR:
        return NotificationSettingsScopeGroupChats.fromJson(json);
      case NotificationSettingsScopeChannelChats.CONSTRUCTOR:
        return NotificationSettingsScopeChannelChats.fromJson(json);
      default:
        return const NotificationSettingsScope();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  NotificationSettingsScope copyWith() => const NotificationSettingsScope();

  static const CONSTRUCTOR = 'notificationSettingsScope';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class NotificationSettingsScopePrivateChats extends NotificationSettingsScope {

  /// Notification settings applied to all private and secret chats when the corresponding chat setting has a default value
  const NotificationSettingsScopePrivateChats();
  
  /// Parse from a json
  factory NotificationSettingsScopePrivateChats.fromJson(Map<String, dynamic> json) => const NotificationSettingsScopePrivateChats();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  NotificationSettingsScopePrivateChats copyWith() => const NotificationSettingsScopePrivateChats();

  static const CONSTRUCTOR = 'notificationSettingsScopePrivateChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class NotificationSettingsScopeGroupChats extends NotificationSettingsScope {

  /// Notification settings applied to all basic groups and supergroups when the corresponding chat setting has a default value
  const NotificationSettingsScopeGroupChats();
  
  /// Parse from a json
  factory NotificationSettingsScopeGroupChats.fromJson(Map<String, dynamic> json) => const NotificationSettingsScopeGroupChats();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  NotificationSettingsScopeGroupChats copyWith() => const NotificationSettingsScopeGroupChats();

  static const CONSTRUCTOR = 'notificationSettingsScopeGroupChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class NotificationSettingsScopeChannelChats extends NotificationSettingsScope {

  /// Notification settings applied to all channels when the corresponding chat setting has a default value
  const NotificationSettingsScopeChannelChats();
  
  /// Parse from a json
  factory NotificationSettingsScopeChannelChats.fromJson(Map<String, dynamic> json) => const NotificationSettingsScopeChannelChats();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  NotificationSettingsScopeChannelChats copyWith() => const NotificationSettingsScopeChannelChats();

  static const CONSTRUCTOR = 'notificationSettingsScopeChannelChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
