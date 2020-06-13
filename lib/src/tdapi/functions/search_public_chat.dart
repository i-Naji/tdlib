part of '../tdapi.dart';

class SearchPublicChat extends TdFunction {
  String username;
  dynamic extra;

  /// Searches a public chat by its username. Currently only private chats, supergroups and channels can be public. Returns the chat if found; otherwise an error is returned. 
  /// [username] Username to be resolved
  SearchPublicChat({this.username});

  /// Parse from a json
  SearchPublicChat.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "username": this.username,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchPublicChat';
}