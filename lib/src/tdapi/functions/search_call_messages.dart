part of '../tdapi.dart';

class SearchCallMessages extends TdFunction {
  /// Searches for call messages. Returns the results in reverse chronological order (i.e., in order of decreasing message_id). For optimal performance, the number of returned messages is chosen by TDLib
  const SearchCallMessages({
    required this.offset,
    required this.limit,
    required this.onlyMissed,
  });

  /// [offset] Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  /// [onlyMissed] Pass true to search only for messages with missed/declined calls
  final bool onlyMissed;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "offset": offset,
      "limit": limit,
      "only_missed": onlyMissed,
      "@extra": extra,
    };
  }

  SearchCallMessages copyWith({
    String? offset,
    int? limit,
    bool? onlyMissed,
  }) =>
      SearchCallMessages(
        offset: offset ?? this.offset,
        limit: limit ?? this.limit,
        onlyMissed: onlyMissed ?? this.onlyMissed,
      );

  static const CONSTRUCTOR = 'searchCallMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
