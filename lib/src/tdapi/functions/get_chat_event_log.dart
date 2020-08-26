part of '../tdapi.dart';

class GetChatEventLog extends TdFunction {
  int chatId;
  String query;
  String fromEventId;
  int limit;
  ChatEventLogFilters filters;
  List<int> userIds;
  dynamic extra;

  /// Returns a list of service actions taken by chat members and administrators in the last 48 hours. Available only for supergroups and channels. Requires administrator rights. Returns results in reverse chronological order (i. e., in order of decreasing event_id). 
  /// [chatId] Chat identifier. 
  /// [query] Search query by which to filter events . 
  /// [fromEventId] Identifier of an event from which to return results. Use 0 to get results from the latest events . 
  /// [limit] The maximum number of events to return; up to 100. 
  /// [filters] The types of events to return. By default, all types will be returned. 
  /// [userIds] User identifiers by which to filter events. By default, events relating to all users will be returned
  GetChatEventLog({this.chatId,
    this.query,
    this.fromEventId,
    this.limit,
    this.filters,
    this.userIds});

  /// Parse from a json
  GetChatEventLog.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "query": this.query,
      "from_event_id": this.fromEventId,
      "limit": this.limit,
      "filters": this.filters.toJson(),
      "user_ids": this.userIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatEventLog';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}