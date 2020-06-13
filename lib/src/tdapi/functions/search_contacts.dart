part of '../tdapi.dart';

class SearchContacts extends TdFunction {
  String query;
  int limit;
  dynamic extra;

  /// Searches for the specified query in the first names, last names and usernames of the known user contacts. 
  /// [query] Query to search for; may be empty to return all contacts . 
  /// [limit] The maximum number of users to be returned
  SearchContacts({this.query,
    this.limit});

  /// Parse from a json
  SearchContacts.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchContacts';
}