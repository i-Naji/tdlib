part of '../tdapi.dart';

class SearchRecentlyFoundChats extends TdFunction {
  /// Searches for the specified query in the title and username of up to 50 recently found chats; this is an offline request
  const SearchRecentlyFoundChats({
    required this.query,
    required this.limit,
  });

  /// [query] Query to search for
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

  SearchRecentlyFoundChats copyWith({
    String? query,
    int? limit,
  }) =>
      SearchRecentlyFoundChats(
        query: query ?? this.query,
        limit: limit ?? this.limit,
      );

  static const CONSTRUCTOR = 'searchRecentlyFoundChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
