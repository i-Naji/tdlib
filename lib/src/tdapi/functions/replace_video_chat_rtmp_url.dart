part of '../tdapi.dart';

class ReplaceVideoChatRtmpUrl extends TdFunction {
  /// Replaces the current RTMP URL for streaming to the chat; requires creator privileges
  const ReplaceVideoChatRtmpUrl({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }

  ReplaceVideoChatRtmpUrl copyWith({
    int? chatId,
  }) =>
      ReplaceVideoChatRtmpUrl(
        chatId: chatId ?? this.chatId,
      );

  static const CONSTRUCTOR = 'replaceVideoChatRtmpUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
