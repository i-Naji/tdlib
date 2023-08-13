part of '../tdapi.dart';

class GetMessageLink extends TdFunction {
  /// Returns an HTTPS link to a message in a chat. Available only for already sent messages in supergroups and channels, or if message.can_get_media_timestamp_links and a media timestamp link is generated. This is an offline request
  const GetMessageLink({
    required this.chatId,
    required this.messageId,
    required this.mediaTimestamp,
    required this.forAlbum,
    required this.inMessageThread,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [mediaTimestamp] If not 0, timestamp from which the video/audio/video note/voice note playing must start, in seconds. The media can be in the message content or in its web page preview
  final int mediaTimestamp;

  /// [forAlbum] Pass true to create a link for the whole media album
  final bool forAlbum;

  /// [inMessageThread] Pass true to create a link to the message as a channel post comment, in a message thread, or a forum topic
  final bool inMessageThread;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "media_timestamp": mediaTimestamp,
      "for_album": forAlbum,
      "in_message_thread": inMessageThread,
      "@extra": extra,
    };
  }

  GetMessageLink copyWith({
    int? chatId,
    int? messageId,
    int? mediaTimestamp,
    bool? forAlbum,
    bool? inMessageThread,
  }) =>
      GetMessageLink(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        mediaTimestamp: mediaTimestamp ?? this.mediaTimestamp,
        forAlbum: forAlbum ?? this.forAlbum,
        inMessageThread: inMessageThread ?? this.inMessageThread,
      );

  static const CONSTRUCTOR = 'getMessageLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
