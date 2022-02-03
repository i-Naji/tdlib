part of '../tdapi.dart';

class SearchChatMembers extends TdFunction {

  /// Searches for a specified query in the first name, last name and username of the members of a specified chat. Requires administrator rights in channels
  const SearchChatMembers({
    required this.chatId,
    required this.query,
    required this.limit,
    this.filter,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [query] Query to search for
  final String query;

  /// [limit] The maximum number of users to be returned; up to 200
  final int limit;

  /// [filter] The type of users to search for; pass null to search among all chat members
  final ChatMembersFilter? filter;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "query": query,
      "limit": limit,
      "filter": filter?.toJson(),
      "@extra": extra,
    };
  }
  
  SearchChatMembers copyWith({
    int? chatId,
    String? query,
    int? limit,
    ChatMembersFilter? filter,
  }) => SearchChatMembers(
    chatId: chatId ?? this.chatId,
    query: query ?? this.query,
    limit: limit ?? this.limit,
    filter: filter ?? this.filter,
  );

  static const CONSTRUCTOR = 'searchChatMembers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
