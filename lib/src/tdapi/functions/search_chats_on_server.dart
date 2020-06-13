part of '../tdapi.dart';

class SearchChatsOnServer extends TdFunction {
  String query;
  int limit;
  dynamic extra;

  /// Searches for the specified query in the title and username of already known chats via request to the server. Returns chats in the order seen in the main chat list. 
  /// [query] Query to search for . 
  /// [limit] The maximum number of chats to be returned
  SearchChatsOnServer({this.query,
    this.limit});

  /// Parse from a json
  SearchChatsOnServer.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchChatsOnServer';
}