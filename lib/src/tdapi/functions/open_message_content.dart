part of '../tdapi.dart';

class OpenMessageContent extends TdFunction {
  /// Informs TDLib that the message content has been opened (e.g., the user has opened a photo, video, document, location or venue, or has listened to an audio file or voice note message). An updateMessageContentOpened update will be generated if something has changed
  OpenMessageContent({this.chatId, this.messageId});

  /// [chatId] Chat identifier of the message
  int chatId;

  /// [messageId] Identifier of the message with the opened content
  int messageId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  OpenMessageContent.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'openMessageContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}
