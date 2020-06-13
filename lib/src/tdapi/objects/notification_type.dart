part of '../tdapi.dart';

class NotificationType extends TdObject {
  

  /// Contains detailed information about a notification
  NotificationType();

  /// a NotificationType return type can be :
  /// * NotificationTypeNewMessage
  /// * NotificationTypeNewSecretChat
  /// * NotificationTypeNewCall
  /// * NotificationTypeNewPushMessage
  factory NotificationType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
    return {
      
    };
  }

  static const CONSTRUCTOR = 'notificationType';
}

class NotificationTypeNewMessage extends NotificationType {
  Message message;

  /// New message was received. 
  /// [message] The message
  NotificationTypeNewMessage({this.message});

  /// Parse from a json
  NotificationTypeNewMessage.fromJson(Map<String, dynamic> json)  {
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": this.message.toJson(),
    };
  }

  static const CONSTRUCTOR = 'notificationTypeNewMessage';
}

class NotificationTypeNewSecretChat extends NotificationType {
  

  /// New secret chat was created
  NotificationTypeNewSecretChat();

  /// Parse from a json
  NotificationTypeNewSecretChat.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'notificationTypeNewSecretChat';
}

class NotificationTypeNewCall extends NotificationType {
  int callId;

  /// New call was received. 
  /// [callId] Call identifier
  NotificationTypeNewCall({this.callId});

  /// Parse from a json
  NotificationTypeNewCall.fromJson(Map<String, dynamic> json)  {
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
}

class NotificationTypeNewPushMessage extends NotificationType {
  int messageId;
  int senderUserId;
  String senderName;
  bool isOutgoing;
  PushMessageContent content;

  /// New message was received through a push notification. 
  /// [messageId] The message identifier. The message will not be available in the chat history, but the notificationTypeNewPushMessage can be used in viewMessages and as reply_to_message_id. 
  /// [senderUserId] Sender of the message; 0 if unknown. Corresponding user may be inaccessible. 
  /// [senderName] Name of the sender; can be different from the name of the sender user. 
  /// [isOutgoing] True, if the message is outgoing. 
  /// [content] Push message content
  NotificationTypeNewPushMessage({this.messageId,
    this.senderUserId,
    this.senderName,
    this.isOutgoing,
    this.content});

  /// Parse from a json
  NotificationTypeNewPushMessage.fromJson(Map<String, dynamic> json)  {
    this.messageId = json['message_id'];
    this.senderUserId = json['sender_user_id'];
    this.senderName = json['sender_name'];
    this.isOutgoing = json['is_outgoing'];
    this.content = PushMessageContent.fromJson(json['content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message_id": this.messageId,
      "sender_user_id": this.senderUserId,
      "sender_name": this.senderName,
      "is_outgoing": this.isOutgoing,
      "content": this.content.toJson(),
    };
  }

  static const CONSTRUCTOR = 'notificationTypeNewPushMessage';
}