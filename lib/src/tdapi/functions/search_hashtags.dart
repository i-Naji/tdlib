part of '../tdapi.dart';

class SearchHashtags extends TdFunction {
  String prefix;
  int limit;
  dynamic extra;

  /// Searches for recently used hashtags by their prefix. 
  /// [prefix] Hashtag prefix to search for . 
  /// [limit] The maximum number of hashtags to be returned
  SearchHashtags({this.prefix,
    this.limit});

  /// Parse from a json
  SearchHashtags.fromJson(Map<String, dynamic> json) ;

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