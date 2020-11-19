part of '../tdapi.dart';

class SearchChatMembers extends TdFunction {
  /// Searches for a specified query in the first name, last name and username of the members of a specified chat. Requires administrator rights in channels
  SearchChatMembers({this.chatId, this.query, this.limit, this.filter});

  /// [chatId] Chat identifier
  int chatId;

  /// [query] Query to search for
  String query;

  /// [limit] The maximum number of users to be returned
  int limit;

  /// [filter] The type of users to return. By default, chatMembersFilterMembers
  ChatMembersFilter filter;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SearchChatMembers.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "query": this.query,
      "limit": this.limit,
      "filter": this.filter == null ? null : this.filter.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchChatMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
