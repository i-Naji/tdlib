part of '../tdapi.dart';

class MessageForwardOrigin implements TLObject {
  /// Contains information about the origin of a forwarded message
  MessageForwardOrigin();

  /// a MessageForwardOrigin return type can be :
  /// * MessageForwardOriginChannel
  /// * MessageForwardOriginUser
  /// * MessageForwardOriginHiddenUser
  factory MessageForwardOrigin.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case MessageForwardOriginChannel.CONSTRUCTOR:
        return MessageForwardOriginChannel.fromJson(json);
      case MessageForwardOriginUser.CONSTRUCTOR:
        return MessageForwardOriginUser.fromJson(json);
      case MessageForwardOriginHiddenUser.CONSTRUCTOR:
        return MessageForwardOriginHiddenUser.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'messageForwardOrigin';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageForwardOriginUser implements MessageForwardOrigin {
  int senderUserId;

  /// The message was originally written by a known user.
  ///[senderUserId] Identifier of the user that originally sent the message
  MessageForwardOriginUser({this.senderUserId});

  /// Parse from a json
  MessageForwardOriginUser.fromJson(Map<String, dynamic> json) {
    this.senderUserId = json['sender_user_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'sender_user_id': this.senderUserId};
  }

  static const String CONSTRUCTOR = 'messageForwardOriginUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageForwardOriginHiddenUser implements MessageForwardOrigin {
  String senderName;

  /// The message was originally written by a user, which is hidden by his privacy settings.
  ///[senderName] Name of the sender
  MessageForwardOriginHiddenUser({this.senderName});

  /// Parse from a json
  MessageForwardOriginHiddenUser.fromJson(Map<String, dynamic> json) {
    this.senderName = json['sender_name'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'sender_name': this.senderName};
  }

  static const String CONSTRUCTOR = 'messageForwardOriginHiddenUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageForwardOriginChannel implements MessageForwardOrigin {
  int chatId;
  int messageId;
  String authorSignature;

  /// The message was originally a post in a channel.
  ///[chatId] Identifier of the chat from which the message was originally forwarded.
  /// [messageId] Message identifier of the original message; 0 if unknown.
  /// [authorSignature] Original post author signature
  MessageForwardOriginChannel(
      {this.chatId, this.messageId, this.authorSignature});

  /// Parse from a json
  MessageForwardOriginChannel.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.messageId = json['message_id'];
    this.authorSignature = json['author_signature'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'message_id': this.messageId,
      'author_signature': this.authorSignature
    };
  }

  static const String CONSTRUCTOR = 'messageForwardOriginChannel';

  @override
  String getConstructor() => CONSTRUCTOR;
}
