part of '../tdapi.dart';

class NotificationGroupType extends TdObject {

  /// Describes the type of notifications in a notification group
  const NotificationGroupType();
  
  /// a NotificationGroupType return type can be :
  /// * [NotificationGroupTypeMessages]
  /// * [NotificationGroupTypeMentions]
  /// * [NotificationGroupTypeSecretChat]
  /// * [NotificationGroupTypeCalls]
  factory NotificationGroupType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case NotificationGroupTypeMessages.CONSTRUCTOR:
        return NotificationGroupTypeMessages.fromJson(json);
      case NotificationGroupTypeMentions.CONSTRUCTOR:
        return NotificationGroupTypeMentions.fromJson(json);
      case NotificationGroupTypeSecretChat.CONSTRUCTOR:
        return NotificationGroupTypeSecretChat.fromJson(json);
      case NotificationGroupTypeCalls.CONSTRUCTOR:
        return NotificationGroupTypeCalls.fromJson(json);
      default:
        return const NotificationGroupType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  NotificationGroupType copyWith() => const NotificationGroupType();

  static const CONSTRUCTOR = 'notificationGroupType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class NotificationGroupTypeMessages extends NotificationGroupType {

  /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with ordinary unread messages
  const NotificationGroupTypeMessages();
  
  /// Parse from a json
  factory NotificationGroupTypeMessages.fromJson(Map<String, dynamic> json) => const NotificationGroupTypeMessages();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  NotificationGroupTypeMessages copyWith() => const NotificationGroupTypeMessages();

  static const CONSTRUCTOR = 'notificationGroupTypeMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class NotificationGroupTypeMentions extends NotificationGroupType {

  /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with unread mentions of the current user, replies to their messages, or a pinned message
  const NotificationGroupTypeMentions();
  
  /// Parse from a json
  factory NotificationGroupTypeMentions.fromJson(Map<String, dynamic> json) => const NotificationGroupTypeMentions();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  NotificationGroupTypeMentions copyWith() => const NotificationGroupTypeMentions();

  static const CONSTRUCTOR = 'notificationGroupTypeMentions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class NotificationGroupTypeSecretChat extends NotificationGroupType {

  /// A group containing a notification of type notificationTypeNewSecretChat
  const NotificationGroupTypeSecretChat();
  
  /// Parse from a json
  factory NotificationGroupTypeSecretChat.fromJson(Map<String, dynamic> json) => const NotificationGroupTypeSecretChat();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  NotificationGroupTypeSecretChat copyWith() => const NotificationGroupTypeSecretChat();

  static const CONSTRUCTOR = 'notificationGroupTypeSecretChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class NotificationGroupTypeCalls extends NotificationGroupType {

  /// A group containing notifications of type notificationTypeNewCall
  const NotificationGroupTypeCalls();
  
  /// Parse from a json
  factory NotificationGroupTypeCalls.fromJson(Map<String, dynamic> json) => const NotificationGroupTypeCalls();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  NotificationGroupTypeCalls copyWith() => const NotificationGroupTypeCalls();

  static const CONSTRUCTOR = 'notificationGroupTypeCalls';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
