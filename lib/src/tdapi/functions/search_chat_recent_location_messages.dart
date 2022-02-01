part of '../tdapi.dart';

class SearchChatRecentLocationMessages extends TdFunction {

  /// Returns information about the recent locations of chat members that were sent to the chat. Returns up to 1 location message per user
  const SearchChatRecentLocationMessages({
    required this.chatId,
    required this.limit,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [limit] The maximum number of messages to be returned
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  SearchChatRecentLocationMessages copyWith({
    int? chatId,
    int? limit,
  }) => SearchChatRecentLocationMessages(
    chatId: chatId ?? this.chatId,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'searchChatRecentLocationMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
