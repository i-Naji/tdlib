part of '../tdapi.dart';

class MessageReplyTo extends TdObject {
  /// Contains information about the message or the story a message is replying to
  const MessageReplyTo();

  /// a MessageReplyTo return type can be :
  /// * [MessageReplyToMessage]
  /// * [MessageReplyToStory]
  factory MessageReplyTo.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageReplyToMessage.CONSTRUCTOR:
        return MessageReplyToMessage.fromJson(json);
      case MessageReplyToStory.CONSTRUCTOR:
        return MessageReplyToStory.fromJson(json);
      default:
        return const MessageReplyTo();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  MessageReplyTo copyWith() => const MessageReplyTo();

  static const CONSTRUCTOR = 'messageReplyTo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageReplyToMessage extends MessageReplyTo {
  /// Describes a replied message
  const MessageReplyToMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] The identifier of the chat to which the replied message belongs; ignored for outgoing replies. For example, messages in the Replies chat are replies to messages in different chats
  final int chatId;

  /// [messageId] The identifier of the replied message
  final int messageId;

  /// Parse from a json
  factory MessageReplyToMessage.fromJson(Map<String, dynamic> json) =>
      MessageReplyToMessage(
        chatId: json['chat_id'],
        messageId: json['message_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }

  @override
  MessageReplyToMessage copyWith({
    int? chatId,
    int? messageId,
  }) =>
      MessageReplyToMessage(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
      );

  static const CONSTRUCTOR = 'messageReplyToMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageReplyToStory extends MessageReplyTo {
  /// Describes a replied story
  const MessageReplyToStory({
    required this.storySenderChatId,
    required this.storyId,
  });

  /// [storySenderChatId] The identifier of the sender of the replied story. Currently, stories can be replied only in the sender's chat
  final int storySenderChatId;

  /// [storyId] The identifier of the replied story
  final int storyId;

  /// Parse from a json
  factory MessageReplyToStory.fromJson(Map<String, dynamic> json) =>
      MessageReplyToStory(
        storySenderChatId: json['story_sender_chat_id'],
        storyId: json['story_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
    };
  }

  @override
  MessageReplyToStory copyWith({
    int? storySenderChatId,
    int? storyId,
  }) =>
      MessageReplyToStory(
        storySenderChatId: storySenderChatId ?? this.storySenderChatId,
        storyId: storyId ?? this.storyId,
      );

  static const CONSTRUCTOR = 'messageReplyToStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
