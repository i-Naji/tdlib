part of '../tdapi.dart';

class SearchHashtags extends TdFunction {

  /// Searches for recently used hashtags by their prefix
  const SearchHashtags({
    required this.prefix,
    required this.limit,
  });
  
  /// [prefix] Hashtag prefix to search for 
  final String prefix;

  /// [limit] The maximum number of hashtags to be returned
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "prefix": prefix,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  SearchHashtags copyWith({
    String? prefix,
    int? limit,
  }) => SearchHashtags(
    prefix: prefix ?? this.prefix,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'searchHashtags';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
