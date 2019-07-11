part of '../tdapi.dart';

class SearchChatRecentLocationMessages extends TLFunction {
  int chatId;
  int limit;
  dynamic extra;

  /// Returns information about the recent locations of chat members that were sent to the chat. Returns up to 1 location message per user.
  ///[chatId] Chat identifier .
  /// [limit] Maximum number of messages to be returned
  SearchChatRecentLocationMessages({this.chatId, this.limit});

  /// Parse from a json
  SearchChatRecentLocationMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "limit": this.limit,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "searchChatRecentLocationMessages";

  @override
  String getConstructor() => CONSTRUCTOR;
}
