part of '../tdapi.dart';

class SearchChatsOnServer extends TdFunction {

  /// Searches for the specified query in the title and username of already known chats via request to the server. Returns chats in the order seen in the main chat list
  const SearchChatsOnServer({
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
  
  SearchChatsOnServer copyWith({
    String? query,
    int? limit,
  }) => SearchChatsOnServer(
    query: query ?? this.query,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'searchChatsOnServer';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
