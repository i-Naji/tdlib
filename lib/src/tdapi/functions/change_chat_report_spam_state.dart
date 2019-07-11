part of '../tdapi.dart';

class ChangeChatReportSpamState extends TLFunction {
  int chatId;
  bool isSpamChat;
  dynamic extra;

  /// Reports to the server whether a chat is a spam chat or not. Can be used only if ChatReportSpamState.can_report_spam is true. After this request, ChatReportSpamState.can_report_spam becomes false forever.
  ///[chatId] Chat identifier .
  /// [isSpamChat] If true, the chat will be reported as spam; otherwise it will be marked as not spam
  ChangeChatReportSpamState({this.chatId, this.isSpamChat});

  /// Parse from a json
  ChangeChatReportSpamState.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "is_spam_chat": this.isSpamChat,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "changeChatReportSpamState";

  @override
  String getConstructor() => CONSTRUCTOR;
}
