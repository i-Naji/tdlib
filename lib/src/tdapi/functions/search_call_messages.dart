part of '../tdapi.dart';

class SearchCallMessages extends TdFunction {

  /// Searches for call messages. Returns the results in reverse chronological order (i. e., in order of decreasing message_id). For optimal performance, the number of returned messages is chosen by TDLib
  const SearchCallMessages({
    required this.fromMessageId,
    required this.limit,
    required this.onlyMissed,
  });
  
  /// [fromMessageId] Identifier of the message from which to search; use 0 to get results from the last message
  final int fromMessageId;

  /// [limit] The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  /// [onlyMissed] If true, returns only messages with missed/declined calls
  final bool onlyMissed;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "from_message_id": fromMessageId,
      "limit": limit,
      "only_missed": onlyMissed,
      "@extra": extra,
    };
  }
  
  SearchCallMessages copyWith({
    int? fromMessageId,
    int? limit,
    bool? onlyMissed,
  }) => SearchCallMessages(
    fromMessageId: fromMessageId ?? this.fromMessageId,
    limit: limit ?? this.limit,
    onlyMissed: onlyMissed ?? this.onlyMissed,
  );

  static const CONSTRUCTOR = 'searchCallMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
