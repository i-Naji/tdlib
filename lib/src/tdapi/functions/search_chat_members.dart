part of '../tdapi.dart';

class SearchChatMembers extends TLFunction {
  int chatId;
  String query;
  int limit;
  var filter;
  dynamic extra;

  /// Searches for a specified query in the first name, last name and username of the members of a specified chat. Requires administrator rights in channels.
  ///[chatId] Chat identifier .
  /// [query] Query to search for .
  /// [limit] The maximum number of users to be returned .
  /// [filter] The type of users to return. By default, chatMembersFilterMembers
  SearchChatMembers({this.chatId, this.query, this.limit, this.filter});

  /// Parse from a json
  SearchChatMembers.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "query": this.query,
      "limit": this.limit,
      "filter": this.filter.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "searchChatMembers";

  @override
  String getConstructor() => CONSTRUCTOR;
}
