part of '../tdapi.dart';

class MessageStatistics extends TdObject {

  /// A detailed statistics about a message
  const MessageStatistics({
    required this.messageInteractionGraph,
    this.extra,
    this.clientId,
  });
  
  /// [messageInteractionGraph] A graph containing number of message views and shares
  final StatisticalGraph messageInteractionGraph;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageStatistics.fromJson(Map<String, dynamic> json) => MessageStatistics(
    messageInteractionGraph: StatisticalGraph.fromJson(json['message_interaction_graph']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_interaction_graph": messageInteractionGraph.toJson(),
    };
  }
  
  MessageStatistics copyWith({
    StatisticalGraph? messageInteractionGraph,
    dynamic extra,
    int? clientId,
  }) => MessageStatistics(
    messageInteractionGraph: messageInteractionGraph ?? this.messageInteractionGraph,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'messageStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
