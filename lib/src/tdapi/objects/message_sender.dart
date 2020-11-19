part of '../tdapi.dart';

class MessageSender extends TdObject {
  /// Contains information about the sender of a message
  MessageSender();

  /// a MessageSender return type can be :
  /// * MessageSenderUser
  /// * MessageSenderChat
  factory MessageSender.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageSenderUser.CONSTRUCTOR:
        return MessageSenderUser.fromJson(json);
      case MessageSenderChat.CONSTRUCTOR:
        return MessageSenderChat.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'messageSender';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSenderUser extends MessageSender {
  /// The message was sent by a known user
  MessageSenderUser({this.userId});

  /// [userId] Identifier of the user that sent the message
  int userId;

  /// Parse from a json
  MessageSenderUser.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
    };
  }

  static const CONSTRUCTOR = 'messageSenderUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSenderChat extends MessageSender {
  /// The message was sent on behalf of a chat
  MessageSenderChat({this.chatId});

  /// [chatId] Identifier of the chat that sent the message
  int chatId;

  /// Parse from a json
  MessageSenderChat.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
    };
  }

  static const CONSTRUCTOR = 'messageSenderChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
