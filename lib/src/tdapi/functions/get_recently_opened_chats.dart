part of '../tdapi.dart';

class GetRecentlyOpenedChats extends TdFunction {

  /// Returns recently opened chats, this is an offline request. Returns chats in the order of last opening
  const GetRecentlyOpenedChats({
    required this.limit,
  });
  
  /// [limit] The maximum number of chats to be returned
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetRecentlyOpenedChats copyWith({
    int? limit,
  }) => GetRecentlyOpenedChats(
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getRecentlyOpenedChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
