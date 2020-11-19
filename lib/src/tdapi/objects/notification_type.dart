part of '../tdapi.dart';

class NotificationType extends TdObject {
  /// Contains detailed information about a notification
  NotificationType();

  /// a NotificationType return type can be :
  /// * NotificationTypeNewMessage
  /// * NotificationTypeNewSecretChat
  /// * NotificationTypeNewCall
  /// * NotificationTypeNewPushMessage
  factory NotificationType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case NotificationTypeNewMessage.CONSTRUCTOR:
        return NotificationTypeNewMessage.fromJson(json);
      case NotificationTypeNewSecretChat.CONSTRUCTOR:
        return NotificationTypeNewSecretChat.fromJson(json);
      case NotificationTypeNewCall.CONSTRUCTOR:
        return NotificationTypeNewCall.fromJson(json);
      case NotificationTypeNewPushMessage.CONSTRUCTOR:
        return NotificationTypeNewPushMessage.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'notificationType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationTypeNewMessage extends NotificationType {
  /// New message was received
  NotificationTypeNewMessage({this.message});

  /// [message] The message
  Message message;

  /// Parse from a json
  NotificationTypeNewMessage.fromJson(Map<String, dynamic> json) {
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": this.message == null ? null : this.message.toJson(),
    };
  }

  static const CONSTRUCTOR = 'notificationTypeNewMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationTypeNewSecretChat extends NotificationType {
  /// New secret chat was created
  NotificationTypeNewSecretChat();

  /// Parse from a json
  NotificationTypeNewSecretChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'notificationTypeNewSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationTypeNewCall extends NotificationType {
  /// New call was received
  NotificationTypeNewCall({this.callId});

  /// [callId] Call identifier
  int callId;

  /// Parse from a json
  NotificationTypeNewCall.fromJson(Map<String, dynamic> json) {
    this.callId = json['call_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call_id": this.callId,
    };
  }

  static const CONSTRUCTOR = 'notificationTypeNewCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationTypeNewPushMessage extends NotificationType {
  /// New message was received through a push notification
  NotificationTypeNewPushMessage(
      {this.messageId,
      this.sender,
      this.senderName,
      this.isOutgoing,
      this.content});

  /// [messageId] The message identifier. The message will not be available in the chat history, but the notificationTypeNewPushMessage can be used in viewMessages, or as reply_to_message_id
  int messageId;

  /// [sender] The sender of the message. Corresponding user or chat may be inaccessible
  MessageSender sender;

  /// [senderName] Name of the sender
  String senderName;

  /// [isOutgoing] True, if the message is outgoing
  bool isOutgoing;

  /// [content] Push message content
  PushMessageContent content;

  /// Parse from a json
  NotificationTypeNewPushMessage.fromJson(Map<String, dynamic> json) {
    this.messageId = json['message_id'];
    this.sender = MessageSender.fromJson(json['sender'] ?? <String, dynamic>{});
    this.senderName = json['sender_name'];
    this.isOutgoing = json['is_outgoing'];
    this.content =
        PushMessageContent.fromJson(json['content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message_id": this.messageId,
      "sender": this.sender == null ? null : this.sender.toJson(),
      "sender_name": this.senderName,
      "is_outgoing": this.isOutgoing,
      "content": this.content == null ? null : this.content.toJson(),
    };
  }

  static const CONSTRUCTOR = 'notificationTypeNewPushMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
