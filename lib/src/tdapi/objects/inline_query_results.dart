part of '../tdapi.dart';

class InlineQueryResults extends TdObject {
  /// Represents the results of the inline query. Use sendInlineQueryResultMessage to send the result of the query
  const InlineQueryResults({
    required this.inlineQueryId,
    this.button,
    required this.results,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });

  /// [inlineQueryId] Unique identifier of the inline query
  final int inlineQueryId;

  /// [button] Button to be shown above inline query results; may be null
  final InlineQueryResultsButton? button;

  /// [results] Results of the query
  final List<InlineQueryResult> results;

  /// [nextOffset] The offset for the next request. If empty, there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory InlineQueryResults.fromJson(Map<String, dynamic> json) =>
      InlineQueryResults(
        inlineQueryId: int.parse(json['inline_query_id']),
        button: json['button'] == null
            ? null
            : InlineQueryResultsButton.fromJson(json['button']),
        results: List<InlineQueryResult>.from((json['results'] ?? [])
            .map((item) => InlineQueryResult.fromJson(item))
            .toList()),
        nextOffset: json['next_offset'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "inline_query_id": inlineQueryId,
      "button": button?.toJson(),
      "results": results.map((i) => i.toJson()).toList(),
      "next_offset": nextOffset,
    };
  }

  InlineQueryResults copyWith({
    int? inlineQueryId,
    InlineQueryResultsButton? button,
    List<InlineQueryResult>? results,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) =>
      InlineQueryResults(
        inlineQueryId: inlineQueryId ?? this.inlineQueryId,
        button: button ?? this.button,
        results: results ?? this.results,
        nextOffset: nextOffset ?? this.nextOffset,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'inlineQueryResults';

  @override
  String getConstructor() => CONSTRUCTOR;
}
