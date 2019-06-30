part of '../tdapi.dart';

class NotificationType implements TLObject {
  /// Contains detailed information about a notification
  NotificationType();

  /// a NotificationType return type can be :
  /// * NotificationTypeNewSecretChat
  /// * NotificationTypeNewPushMessage
  /// * NotificationTypeNewMessage
  /// * NotificationTypeNewCall
  factory NotificationType.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case NotificationTypeNewSecretChat.CONSTRUCTOR:
        return NotificationTypeNewSecretChat.fromJson(json);
      case NotificationTypeNewPushMessage.CONSTRUCTOR:
        return NotificationTypeNewPushMessage.fromJson(json);
      case NotificationTypeNewMessage.CONSTRUCTOR:
        return NotificationTypeNewMessage.fromJson(json);
      case NotificationTypeNewCall.CONSTRUCTOR:
        return NotificationTypeNewCall.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'notificationType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationTypeNewMessage implements NotificationType {
  Message message;

  /// New message was received.
  ///[message] The message
  NotificationTypeNewMessage({this.message});

  /// Parse from a json
  NotificationTypeNewMessage.fromJson(Map<String, dynamic> json) {
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'message': this.message.toJson()};
  }

  static const String CONSTRUCTOR = 'notificationTypeNewMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationTypeNewSecretChat implements NotificationType {
  /// New secret chat was created.
  ///
  NotificationTypeNewSecretChat();

  /// Parse from a json
  NotificationTypeNewSecretChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'notificationTypeNewSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationTypeNewCall implements NotificationType {
  int callId;

  /// New call was received.
  ///[callId] Call identifier
  NotificationTypeNewCall({this.callId});

  /// Parse from a json
  NotificationTypeNewCall.fromJson(Map<String, dynamic> json) {
    this.callId = json['call_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'call_id': this.callId};
  }

  static const String CONSTRUCTOR = 'notificationTypeNewCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationTypeNewPushMessage implements NotificationType {
  int messageId;
  int senderUserId;
  var content;

  /// New message was received through a push notification.
  ///[messageId] The message identifier. The message will not be available in the chat history, but the ID can be used in viewMessages and as reply_to_message_id.
  /// [senderUserId] Sender of the message. Corresponding user may be inaccessible .
  /// [content] Push message content
  NotificationTypeNewPushMessage(
      {this.messageId, this.senderUserId, this.content});

  /// Parse from a json
  NotificationTypeNewPushMessage.fromJson(Map<String, dynamic> json) {
    this.messageId = json['message_id'];
    this.senderUserId = json['sender_user_id'];
    this.content =
        PushMessageContent.fromJson(json['content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'message_id': this.messageId,
      'sender_user_id': this.senderUserId,
      'content': this.content.toJson()
    };
  }

  static const String CONSTRUCTOR = 'notificationTypeNewPushMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
