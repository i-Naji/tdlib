part of '../tdapi.dart';

class GetChatStatistics extends TdFunction {
  int chatId;
  bool isDark;
  dynamic extra;

  /// Returns detailed statistics about a chat. Currently this method can be used only for channels. Requires administrator rights in the channel. 
  /// [chatId] Chat identifier . 
  /// [isDark] Pass true if a dark theme is used by the app
  GetChatStatistics({this.chatId,
    this.isDark});

  /// Parse from a json
  GetChatStatistics.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "is_dark": this.isDark,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatStatistics';
}