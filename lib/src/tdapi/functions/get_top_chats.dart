part of '../tdapi.dart';

class GetTopChats extends TdFunction {

  /// Returns a list of frequently used chats. Supported only if the chat info database is enabled
  const GetTopChats({
    required this.category,
    required this.limit,
  });
  
  /// [category] Category of chats to be returned 
  final TopChatCategory category;

  /// [limit] The maximum number of chats to be returned; up to 30
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "category": category.toJson(),
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetTopChats copyWith({
    TopChatCategory? category,
    int? limit,
  }) => GetTopChats(
    category: category ?? this.category,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getTopChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
