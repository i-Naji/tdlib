part of '../tdapi.dart';

class SearchContacts extends TdFunction {

  /// Searches for the specified query in the first names, last names and usernames of the known user contacts
  const SearchContacts({
    required this.query,
    required this.limit,
  });
  
  /// [query] Query to search for; may be empty to return all contacts 
  final String query;

  /// [limit] The maximum number of users to be returned
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
  
  SearchContacts copyWith({
    String? query,
    int? limit,
  }) => SearchContacts(
    query: query ?? this.query,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'searchContacts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
