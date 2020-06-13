part of '../tdapi.dart';

class ChatStatistics extends TdObject {
  DateRange period;
  StatisticsValue memberCount;
  StatisticsValue meanViewCount;
  StatisticsValue meanShareCount;
  double enabledNotificationsPercentage;
  StatisticsGraph memberCountGraph;
  StatisticsGraph joinGraph;
  StatisticsGraph muteGraph;
  StatisticsGraph viewCountByHourGraph;
  StatisticsGraph viewCountBySourceGraph;
  StatisticsGraph joinBySourceGraph;
  StatisticsGraph languageGraph;
  StatisticsGraph messageInteractionGraph;
  StatisticsGraph instantViewInteractionGraph;
  List<List<ChatStatisticsMessageInteractionCounters>> recentMessageInteractions;
  dynamic extra;

  /// A detailed statistics about a chat. 
  /// [period] A period to which the statistics applies. 
  /// [memberCount] Number of members in the chat. 
  /// [meanViewCount] Mean number of times the recently sent messages was viewed. 
  /// [meanShareCount] Mean number of times the recently sent messages was shared. 
  /// [enabledNotificationsPercentage] A percentage of users with enabled notifications for the chat. 
  /// [memberCountGraph] A graph containing number of members in the chat. 
  /// [joinGraph] A graph containing number of members joined and left the chat. 
  /// [muteGraph] A graph containing number of members muted and unmuted the chat. 
  /// [viewCountByHourGraph] A graph containing number of message views in a given hour in the last two weeks. 
  /// [viewCountBySourceGraph] A graph containing number of message views per source. 
  /// [joinBySourceGraph] A graph containing number of new member joins per source. 
  /// [languageGraph] A graph containing number of users viewed chat messages per language. 
  /// [messageInteractionGraph] A graph containing number of chat message views and shares. 
  /// [instantViewInteractionGraph] A graph containing number of views of associated with the chat instant views. 
  /// [recentMessageInteractions] Detailed statistics about number of views and shares of recently sent messages
  ChatStatistics({this.period,
    this.memberCount,
    this.meanViewCount,
    this.meanShareCount,
    this.enabledNotificationsPercentage,
    this.memberCountGraph,
    this.joinGraph,
    this.muteGraph,
    this.viewCountByHourGraph,
    this.viewCountBySourceGraph,
    this.joinBySourceGraph,
    this.languageGraph,
    this.messageInteractionGraph,
    this.instantViewInteractionGraph,
    this.recentMessageInteractions});

  /// Parse from a json
  ChatStatistics.fromJson(Map<String, dynamic> json)  {
    this.period = DateRange.fromJson(json['period'] ?? <String, dynamic>{});
    this.memberCount = StatisticsValue.fromJson(json['member_count'] ?? <String, dynamic>{});
    this.meanViewCount = StatisticsValue.fromJson(json['mean_view_count'] ?? <String, dynamic>{});
    this.meanShareCount = StatisticsValue.fromJson(json['mean_share_count'] ?? <String, dynamic>{});
    this.enabledNotificationsPercentage = json['enabled_notifications_percentage'];
    this.memberCountGraph = StatisticsGraph.fromJson(json['member_count_graph'] ?? <String, dynamic>{});
    this.joinGraph = StatisticsGraph.fromJson(json['join_graph'] ?? <String, dynamic>{});
    this.muteGraph = StatisticsGraph.fromJson(json['mute_graph'] ?? <String, dynamic>{});
    this.viewCountByHourGraph = StatisticsGraph.fromJson(json['view_count_by_hour_graph'] ?? <String, dynamic>{});
    this.viewCountBySourceGraph = StatisticsGraph.fromJson(json['view_count_by_source_graph'] ?? <String, dynamic>{});
    this.joinBySourceGraph = StatisticsGraph.fromJson(json['join_by_source_graph'] ?? <String, dynamic>{});
    this.languageGraph = StatisticsGraph.fromJson(json['language_graph'] ?? <String, dynamic>{});
    this.messageInteractionGraph = StatisticsGraph.fromJson(json['message_interaction_graph'] ?? <String, dynamic>{});
    this.instantViewInteractionGraph = StatisticsGraph.fromJson(json['instant_view_interaction_graph'] ?? <String, dynamic>{});
    this.recentMessageInteractions = List<List<ChatStatisticsMessageInteractionCounters>>.from((json['recent_message_interactions'] ?? []).map((item) => List<ChatStatisticsMessageInteractionCounters>.from((item ?? []).map((innerItem) => ChatStatisticsMessageInteractionCounters.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "period": this.period.toJson(),
      "member_count": this.memberCount.toJson(),
      "mean_view_count": this.meanViewCount.toJson(),
      "mean_share_count": this.meanShareCount.toJson(),
      "enabled_notifications_percentage": this.enabledNotificationsPercentage,
      "member_count_graph": this.memberCountGraph.toJson(),
      "join_graph": this.joinGraph.toJson(),
      "mute_graph": this.muteGraph.toJson(),
      "view_count_by_hour_graph": this.viewCountByHourGraph.toJson(),
      "view_count_by_source_graph": this.viewCountBySourceGraph.toJson(),
      "join_by_source_graph": this.joinBySourceGraph.toJson(),
      "language_graph": this.languageGraph.toJson(),
      "message_interaction_graph": this.messageInteractionGraph.toJson(),
      "instant_view_interaction_graph": this.instantViewInteractionGraph.toJson(),
      "recent_message_interactions": this.recentMessageInteractions.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatStatistics';
}