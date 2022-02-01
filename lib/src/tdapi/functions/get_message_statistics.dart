part of '../tdapi.dart';

class GetMessageStatistics extends TdFunction {

  /// Returns detailed statistics about a message. Can be used only if message.can_get_statistics == true
  const GetMessageStatistics({
    required this.chatId,
    required this.messageId,
    required this.isDark,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageId] Message identifier 
  final int messageId;

  /// [isDark] Pass true if a dark theme is used by the application
  final bool isDark;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "is_dark": isDark,
      "@extra": extra,
    };
  }
  
  GetMessageStatistics copyWith({
    int? chatId,
    int? messageId,
    bool? isDark,
  }) => GetMessageStatistics(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    isDark: isDark ?? this.isDark,
  );

  static const CONSTRUCTOR = 'getMessageStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
