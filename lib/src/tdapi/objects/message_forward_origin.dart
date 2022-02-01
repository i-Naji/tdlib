part of '../tdapi.dart';

class MessageForwardOrigin extends TdObject {

  /// Contains information about the origin of a forwarded message
  const MessageForwardOrigin();
  
  /// a MessageForwardOrigin return type can be :
  /// * [MessageForwardOriginUser]
  /// * [MessageForwardOriginChat]
  /// * [MessageForwardOriginHiddenUser]
  /// * [MessageForwardOriginChannel]
  /// * [MessageForwardOriginMessageImport]
  factory MessageForwardOrigin.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageForwardOriginUser.CONSTRUCTOR:
        return MessageForwardOriginUser.fromJson(json);
      case MessageForwardOriginChat.CONSTRUCTOR:
        return MessageForwardOriginChat.fromJson(json);
      case MessageForwardOriginHiddenUser.CONSTRUCTOR:
        return MessageForwardOriginHiddenUser.fromJson(json);
      case MessageForwardOriginChannel.CONSTRUCTOR:
        return MessageForwardOriginChannel.fromJson(json);
      case MessageForwardOriginMessageImport.CONSTRUCTOR:
        return MessageForwardOriginMessageImport.fromJson(json);
      default:
        return const MessageForwardOrigin();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  MessageForwardOrigin copyWith() => const MessageForwardOrigin();

  static const CONSTRUCTOR = 'messageForwardOrigin';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageForwardOriginUser extends MessageForwardOrigin {

  /// The message was originally sent by a known user
  const MessageForwardOriginUser({
    required this.senderUserId,
  });
  
  /// [senderUserId] Identifier of the user that originally sent the message
  final int senderUserId;
  
  /// Parse from a json
  factory MessageForwardOriginUser.fromJson(Map<String, dynamic> json) => MessageForwardOriginUser(
    senderUserId: json['sender_user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender_user_id": senderUserId,
    };
  }
  
  @override
  MessageForwardOriginUser copyWith({
    int? senderUserId,
  }) => MessageForwardOriginUser(
    senderUserId: senderUserId ?? this.senderUserId,
  );

  static const CONSTRUCTOR = 'messageForwardOriginUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageForwardOriginChat extends MessageForwardOrigin {

  /// The message was originally sent on behalf of a chat
  const MessageForwardOriginChat({
    required this.senderChatId,
    required this.authorSignature,
  });
  
  /// [senderChatId] Identifier of the chat that originally sent the message
  final int senderChatId;

  /// [authorSignature] For messages originally sent by an anonymous chat administrator, original message author signature
  final String authorSignature;
  
  /// Parse from a json
  factory MessageForwardOriginChat.fromJson(Map<String, dynamic> json) => MessageForwardOriginChat(
    senderChatId: json['sender_chat_id'],
    authorSignature: json['author_signature'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender_chat_id": senderChatId,
      "author_signature": authorSignature,
    };
  }
  
  @override
  MessageForwardOriginChat copyWith({
    int? senderChatId,
    String? authorSignature,
  }) => MessageForwardOriginChat(
    senderChatId: senderChatId ?? this.senderChatId,
    authorSignature: authorSignature ?? this.authorSignature,
  );

  static const CONSTRUCTOR = 'messageForwardOriginChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageForwardOriginHiddenUser extends MessageForwardOrigin {

  /// The message was originally sent by a user, which is hidden by their privacy settings
  const MessageForwardOriginHiddenUser({
    required this.senderName,
  });
  
  /// [senderName] Name of the sender
  final String senderName;
  
  /// Parse from a json
  factory MessageForwardOriginHiddenUser.fromJson(Map<String, dynamic> json) => MessageForwardOriginHiddenUser(
    senderName: json['sender_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender_name": senderName,
    };
  }
  
  @override
  MessageForwardOriginHiddenUser copyWith({
    String? senderName,
  }) => MessageForwardOriginHiddenUser(
    senderName: senderName ?? this.senderName,
  );

  static const CONSTRUCTOR = 'messageForwardOriginHiddenUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageForwardOriginChannel extends MessageForwardOrigin {

  /// The message was originally a post in a channel
  const MessageForwardOriginChannel({
    required this.chatId,
    required this.messageId,
    required this.authorSignature,
  });
  
  /// [chatId] Identifier of the chat from which the message was originally forwarded
  final int chatId;

  /// [messageId] Message identifier of the original message
  final int messageId;

  /// [authorSignature] Original post author signature
  final String authorSignature;
  
  /// Parse from a json
  factory MessageForwardOriginChannel.fromJson(Map<String, dynamic> json) => MessageForwardOriginChannel(
    chatId: json['chat_id'],
    messageId: json['message_id'],
    authorSignature: json['author_signature'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "author_signature": authorSignature,
    };
  }
  
  @override
  MessageForwardOriginChannel copyWith({
    int? chatId,
    int? messageId,
    String? authorSignature,
  }) => MessageForwardOriginChannel(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    authorSignature: authorSignature ?? this.authorSignature,
  );

  static const CONSTRUCTOR = 'messageForwardOriginChannel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageForwardOriginMessageImport extends MessageForwardOrigin {

  /// The message was imported from an exported message history
  const MessageForwardOriginMessageImport({
    required this.senderName,
  });
  
  /// [senderName] Name of the sender
  final String senderName;
  
  /// Parse from a json
  factory MessageForwardOriginMessageImport.fromJson(Map<String, dynamic> json) => MessageForwardOriginMessageImport(
    senderName: json['sender_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sender_name": senderName,
    };
  }
  
  @override
  MessageForwardOriginMessageImport copyWith({
    String? senderName,
  }) => MessageForwardOriginMessageImport(
    senderName: senderName ?? this.senderName,
  );

  static const CONSTRUCTOR = 'messageForwardOriginMessageImport';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
