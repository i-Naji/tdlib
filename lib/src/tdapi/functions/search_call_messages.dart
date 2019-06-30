part of '../tdapi.dart';

class SearchCallMessages extends TLFunction {
  int fromMessageId;
  int limit;
  bool onlyMissed;
  dynamic extra;

  /// Searches for call messages. Returns the results in reverse chronological order (i. e., in order of decreasing message_id). For optimal performance the number of returned messages is chosen by the library.
  ///[fromMessageId] Identifier of the message from which to search; use 0 to get results from the last message.
  /// [limit] The maximum number of messages to be returned; up to 100. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached .
  /// [onlyMissed] If true, returns only messages with missed calls
  SearchCallMessages({this.fromMessageId, this.limit, this.onlyMissed});

  /// Parse from a json
  SearchCallMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'from_message_id': this.fromMessageId,
      'limit': this.limit,
      'only_missed': this.onlyMissed,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'searchCallMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
