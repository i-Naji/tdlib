part of '../tdapi.dart';

class AnswerInlineQuery extends TdFunction {
  String inlineQueryId;
  bool isPersonal;
  List<InputInlineQueryResult> results;
  int cacheTime;
  String nextOffset;
  String switchPmText;
  String switchPmParameter;
  dynamic extra;

  /// Sets the result of an inline query; for bots only. 
  /// [inlineQueryId] Identifier of the inline query . 
  /// [isPersonal] True, if the result of the query can be cached for the specified user. 
  /// [results] The results of the query. 
  /// [cacheTime] Allowed time to cache the results of the query, in seconds . 
  /// [nextOffset] Offset for the next inline query; pass an empty string if there are no more results. 
  /// [switchPmText] If non-empty, this text should be shown on the button that opens a private chat with the bot and sends a start message to the bot with the parameter switch_pm_parameter. 
  /// [switchPmParameter] The parameter for the bot start message
  AnswerInlineQuery({this.inlineQueryId,
    this.isPersonal,
    this.results,
    this.cacheTime,
    this.nextOffset,
    this.switchPmText,
    this.switchPmParameter});

  /// Parse from a json
  AnswerInlineQuery.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_query_id": this.inlineQueryId,
      "is_personal": this.isPersonal,
      "results": this.results.map((i) => i.toJson()).toList(),
      "cache_time": this.cacheTime,
      "next_offset": this.nextOffset,
      "switch_pm_text": this.switchPmText,
      "switch_pm_parameter": this.switchPmParameter,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'answerInlineQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}