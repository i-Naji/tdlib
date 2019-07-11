part of '../tdapi.dart';

class OpenMessageContent extends TLFunction {
  int chatId;
  int messageId;
  dynamic extra;

  /// Informs TDLib that the message content has been opened (e.g., the user has opened a photo, video, document, location or venue, or has listened to an audio file or voice note message). An updateMessageContentOpened update will be generated if something has changed.
  ///[chatId] Chat identifier of the message .
  /// [messageId] Identifier of the message with the opened content
  OpenMessageContent({this.chatId, this.messageId});

  /// Parse from a json
  OpenMessageContent.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "openMessageContent";

  @override
  String getConstructor() => CONSTRUCTOR;
}
