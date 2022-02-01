part of '../tdapi.dart';

class AnswerInlineQuery extends TdFunction {

  /// Sets the result of an inline query; for bots only
  const AnswerInlineQuery({
    required this.inlineQueryId,
    required this.isPersonal,
    required this.results,
    required this.cacheTime,
    required this.nextOffset,
    required this.switchPmText,
    required this.switchPmParameter,
  });
  
  /// [inlineQueryId] Identifier of the inline query
  final int inlineQueryId;

  /// [isPersonal] True, if the result of the query can be cached for the specified user
  final bool isPersonal;

  /// [results] The results of the query
  final List<InputInlineQueryResult> results;

  /// [cacheTime] Allowed time to cache the results of the query, in seconds
  final int cacheTime;

  /// [nextOffset] Offset for the next inline query; pass an empty string if there are no more results
  final String nextOffset;

  /// [switchPmText] If non-empty, this text must be shown on the button that opens a private chat with the bot and sends a start message to the bot with the parameter switch_pm_parameter
  final String switchPmText;

  /// [switchPmParameter] The parameter for the bot start message
  final String switchPmParameter;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "inline_query_id": inlineQueryId,
      "is_personal": isPersonal,
      "results": results.map((i) => i.toJson()).toList(),
      "cache_time": cacheTime,
      "next_offset": nextOffset,
      "switch_pm_text": switchPmText,
      "switch_pm_parameter": switchPmParameter,
      "@extra": extra,
    };
  }
  
  AnswerInlineQuery copyWith({
    int? inlineQueryId,
    bool? isPersonal,
    List<InputInlineQueryResult>? results,
    int? cacheTime,
    String? nextOffset,
    String? switchPmText,
    String? switchPmParameter,
  }) => AnswerInlineQuery(
    inlineQueryId: inlineQueryId ?? this.inlineQueryId,
    isPersonal: isPersonal ?? this.isPersonal,
    results: results ?? this.results,
    cacheTime: cacheTime ?? this.cacheTime,
    nextOffset: nextOffset ?? this.nextOffset,
    switchPmText: switchPmText ?? this.switchPmText,
    switchPmParameter: switchPmParameter ?? this.switchPmParameter,
  );

  static const CONSTRUCTOR = 'answerInlineQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
