part of '../tdapi.dart';

class SearchHashtags extends TdFunction {
  /// Searches for recently used hashtags by their prefix
  SearchHashtags({this.prefix, this.limit});

  /// [prefix] Hashtag prefix to search for
  String prefix;

  /// [limit] The maximum number of hashtags to be returned
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SearchHashtags.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "prefix": this.prefix,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchHashtags';

  @override
  String getConstructor() => CONSTRUCTOR;
}
