part of '../tdapi.dart';

class GetMessageStatistics extends TdFunction {
  /// Returns detailed statistics about a message. Can be used only if Message.can_get_statistics == true
  GetMessageStatistics({this.chatId, this.messageId, this.isDark});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// [isDark] Pass true if a dark theme is used by the application
  bool isDark;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetMessageStatistics.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "is_dark": this.isDark,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMessageStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
