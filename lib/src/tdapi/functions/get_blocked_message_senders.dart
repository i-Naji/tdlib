part of '../tdapi.dart';

class GetBlockedMessageSenders extends TdFunction {

  /// Returns users and chats that were blocked by the current user
  const GetBlockedMessageSenders({
    required this.offset,
    required this.limit,
  });
  
  /// [offset] Number of users and chats to skip in the result; must be non-negative 
  final int offset;

  /// [limit] The maximum number of users and chats to return; up to 100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetBlockedMessageSenders copyWith({
    int? offset,
    int? limit,
  }) => GetBlockedMessageSenders(
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getBlockedMessageSenders';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
