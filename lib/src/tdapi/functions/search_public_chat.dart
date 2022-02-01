part of '../tdapi.dart';

class SearchPublicChat extends TdFunction {

  /// Searches a public chat by its username. Currently, only private chats, supergroups and channels can be public. Returns the chat if found; otherwise an error is returned
  const SearchPublicChat({
    required this.username,
  });
  
  /// [username] Username to be resolved
  final String username;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "username": username,
      "@extra": extra,
    };
  }
  
  SearchPublicChat copyWith({
    String? username,
  }) => SearchPublicChat(
    username: username ?? this.username,
  );

  static const CONSTRUCTOR = 'searchPublicChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
