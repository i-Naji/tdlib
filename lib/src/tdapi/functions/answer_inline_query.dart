part of '../tdapi.dart';

class AnswerInlineQuery extends TdFunction {
  /// Sets the result of an inline query; for bots only
  const AnswerInlineQuery({
    required this.inlineQueryId,
    required this.isPersonal,
    this.button,
    required this.results,
    required this.cacheTime,
    required this.nextOffset,
  });

  /// [inlineQueryId] Identifier of the inline query
  final int inlineQueryId;

  /// [isPersonal] Pass true if results may be cached and returned only for the user that sent the query. By default, results may be returned to any user who sends the same query
  final bool isPersonal;

  /// [button] Button to be shown above inline query results; pass null if none
  final InlineQueryResultsButton? button;

  /// [results] The results of the query
  final List<InputInlineQueryResult> results;

  /// [cacheTime] Allowed time to cache the results of the query, in seconds
  final int cacheTime;

  /// [nextOffset] Offset for the next inline query; pass an empty string if there are no more results
  final String nextOffset;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "inline_query_id": inlineQueryId,
      "is_personal": isPersonal,
      "button": button?.toJson(),
      "results": results.map((i) => i.toJson()).toList(),
      "cache_time": cacheTime,
      "next_offset": nextOffset,
      "@extra": extra,
    };
  }

  AnswerInlineQuery copyWith({
    int? inlineQueryId,
    bool? isPersonal,
    InlineQueryResultsButton? button,
    List<InputInlineQueryResult>? results,
    int? cacheTime,
    String? nextOffset,
  }) =>
      AnswerInlineQuery(
        inlineQueryId: inlineQueryId ?? this.inlineQueryId,
        isPersonal: isPersonal ?? this.isPersonal,
        button: button ?? this.button,
        results: results ?? this.results,
        cacheTime: cacheTime ?? this.cacheTime,
        nextOffset: nextOffset ?? this.nextOffset,
      );

  static const CONSTRUCTOR = 'answerInlineQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}
