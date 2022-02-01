part of '../tdapi.dart';

class SearchChats extends TdFunction {

  /// Searches for the specified query in the title and username of already known chats, this is an offline request. Returns chats in the order seen in the main chat list
  const SearchChats({
    required this.query,
    required this.limit,
  });
  
  /// [query] Query to search for. If the query is empty, returns up to 50 recently found chats 
  final String query;

  /// [limit] The maximum number of chats to be returned
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "query": query,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  SearchChats copyWith({
    String? query,
    int? limit,
  }) => SearchChats(
    query: query ?? this.query,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'searchChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
