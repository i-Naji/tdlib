part of '../tdapi.dart';

class GetChatEventLog extends TdFunction {

  /// Returns a list of service actions taken by chat members and administrators in the last 48 hours. Available only for supergroups and channels. Requires administrator rights. Returns results in reverse chronological order (i. e., in order of decreasing event_id)
  const GetChatEventLog({
    required this.chatId,
    required this.query,
    required this.fromEventId,
    required this.limit,
    this.filters,
    required this.userIds,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [query] Search query by which to filter events 
  final String query;

  /// [fromEventId] Identifier of an event from which to return results. Use 0 to get results from the latest events 
  final int fromEventId;

  /// [limit] The maximum number of events to return; up to 100
  final int limit;

  /// [filters] The types of events to return; pass null to get chat events of all types
  final ChatEventLogFilters? filters;

  /// [userIds] User identifiers by which to filter events. By default, events relating to all users will be returned
  final List<int> userIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "query": query,
      "from_event_id": fromEventId,
      "limit": limit,
      "filters": filters?.toJson(),
      "user_ids": userIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  GetChatEventLog copyWith({
    int? chatId,
    String? query,
    int? fromEventId,
    int? limit,
    ChatEventLogFilters? filters,
    List<int>? userIds,
  }) => GetChatEventLog(
    chatId: chatId ?? this.chatId,
    query: query ?? this.query,
    fromEventId: fromEventId ?? this.fromEventId,
    limit: limit ?? this.limit,
    filters: filters ?? this.filters,
    userIds: userIds ?? this.userIds,
  );

  static const CONSTRUCTOR = 'getChatEventLog';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
