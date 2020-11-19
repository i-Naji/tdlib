part of '../tdapi.dart';

class SearchChatRecentLocationMessages extends TdFunction {
  /// Returns information about the recent locations of chat members that were sent to the chat. Returns up to 1 location message per user
  SearchChatRecentLocationMessages({this.chatId, this.limit});

  /// [chatId] Chat identifier
  int chatId;

  /// [limit] The maximum number of messages to be returned
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SearchChatRecentLocationMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchChatRecentLocationMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
