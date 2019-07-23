part of '../tdapi.dart';

class NotificationGroupType implements TdObject {
  /// Describes type of notifications in the group
  NotificationGroupType();

  /// a NotificationGroupType return type can be :
  /// * NotificationGroupTypeMessages
  /// * NotificationGroupTypeMentions
  /// * NotificationGroupTypeSecretChat
  /// * NotificationGroupTypeCalls
  factory NotificationGroupType.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case NotificationGroupTypeMessages.CONSTRUCTOR:
        return NotificationGroupTypeMessages.fromJson(json);
      case NotificationGroupTypeMentions.CONSTRUCTOR:
        return NotificationGroupTypeMentions.fromJson(json);
      case NotificationGroupTypeSecretChat.CONSTRUCTOR:
        return NotificationGroupTypeSecretChat.fromJson(json);
      case NotificationGroupTypeCalls.CONSTRUCTOR:
        return NotificationGroupTypeCalls.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "notificationGroupType";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationGroupTypeMessages implements NotificationGroupType {
  /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with ordinary unread messages.
  ///
  NotificationGroupTypeMessages();

  /// Parse from a json
  NotificationGroupTypeMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "notificationGroupTypeMessages";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationGroupTypeMentions implements NotificationGroupType {
  /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with unread mentions of the current user, replies to their messages, or a pinned message.
  ///
  NotificationGroupTypeMentions();

  /// Parse from a json
  NotificationGroupTypeMentions.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "notificationGroupTypeMentions";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationGroupTypeSecretChat implements NotificationGroupType {
  /// A group containing a notification of type notificationTypeNewSecretChat.
  ///
  NotificationGroupTypeSecretChat();

  /// Parse from a json
  NotificationGroupTypeSecretChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "notificationGroupTypeSecretChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationGroupTypeCalls implements NotificationGroupType {
  /// A group containing notifications of type notificationTypeNewCall.
  ///
  NotificationGroupTypeCalls();

  /// Parse from a json
  NotificationGroupTypeCalls.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "notificationGroupTypeCalls";

  @override
  String getConstructor() => CONSTRUCTOR;
}
