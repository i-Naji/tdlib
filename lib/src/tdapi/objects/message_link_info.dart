part of '../tdapi.dart';

class MessageLinkInfo extends TdObject {
  /// Contains information about a link to a message or a forum topic in a chat
  const MessageLinkInfo({
    required this.isPublic,
    required this.chatId,
    required this.messageThreadId,
    this.message,
    required this.mediaTimestamp,
    required this.forAlbum,
    this.extra,
    this.clientId,
  });

  /// [isPublic] True, if the link is a public link for a message or a forum topic in a chat
  final bool isPublic;

  /// [chatId] If found, identifier of the chat to which the link points, 0 otherwise
  final int chatId;

  /// [messageThreadId] If found, identifier of the message thread in which to open the message, or a forum topic to open if the message is missing
  final int messageThreadId;

  /// [message] If found, the linked message; may be null
  final Message? message;

  /// [mediaTimestamp] Timestamp from which the video/audio/video note/voice note playing must start, in seconds; 0 if not specified. The media can be in the message content or in its web page preview
  final int mediaTimestamp;

  /// [forAlbum] True, if the whole media album to which the message belongs is linked
  final bool forAlbum;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory MessageLinkInfo.fromJson(Map<String, dynamic> json) =>
      MessageLinkInfo(
        isPublic: json['is_public'],
        chatId: json['chat_id'],
        messageThreadId: json['message_thread_id'],
        message:
            json['message'] == null ? null : Message.fromJson(json['message']),
        mediaTimestamp: json['media_timestamp'],
        forAlbum: json['for_album'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_public": isPublic,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "message": message?.toJson(),
      "media_timestamp": mediaTimestamp,
      "for_album": forAlbum,
    };
  }

  MessageLinkInfo copyWith({
    bool? isPublic,
    int? chatId,
    int? messageThreadId,
    Message? message,
    int? mediaTimestamp,
    bool? forAlbum,
    dynamic extra,
    int? clientId,
  }) =>
      MessageLinkInfo(
        isPublic: isPublic ?? this.isPublic,
        chatId: chatId ?? this.chatId,
        messageThreadId: messageThreadId ?? this.messageThreadId,
        message: message ?? this.message,
        mediaTimestamp: mediaTimestamp ?? this.mediaTimestamp,
        forAlbum: forAlbum ?? this.forAlbum,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'messageLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
