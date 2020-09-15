part of '../tdapi.dart';

class SearchSecretMessages extends TdFunction {

  /// Searches for messages in secret chats. Returns the results in reverse chronological order. For optimal performance the number of returned messages is chosen by the library
  SearchSecretMessages({this.chatId,
    this.query,
    this.fromSearchId,
    this.limit,
    this.filter});

  /// [chatId] Identifier of the chat in which to search. Specify 0 to search in all secret chats
  int chatId;

  /// [query] Query to search for. If empty, searchChatMessages should be used instead
  String query;

  /// [fromSearchId] The identifier from the result of a previous request, use 0 to get results from the last message
  int fromSearchId;

  /// [limit] The maximum number of messages to be returned; up to 100. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached
  int limit;

  /// [filter] A filter for the content of messages in the search results
  SearchMessagesFilter filter;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SearchSecretMessages.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "query": this.query,
      "from_search_id": this.fromSearchId,
      "limit": this.limit,
      "filter": this.filter == null ? null : this.filter.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchSecretMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}