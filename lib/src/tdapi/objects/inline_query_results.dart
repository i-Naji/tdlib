part of '../tdapi.dart';

class InlineQueryResults extends TdObject {
  String inlineQueryId;
  String nextOffset;
  List<InlineQueryResult> results;
  String switchPmText;
  String switchPmParameter;
  dynamic extra;

  /// Represents the results of the inline query. Use sendInlineQueryResultMessage to send the result of the query. 
  /// [inlineQueryId] Unique identifier of the inline query . 
  /// [nextOffset] The offset for the next request. If empty, there are no more results . 
  /// [results] Results of the query. 
  /// [switchPmText] If non-empty, this text should be shown on the button, which opens a private chat with the bot and sends the bot a start message with the switch_pm_parameter. 
  /// [switchPmParameter] Parameter for the bot start message
  InlineQueryResults({this.inlineQueryId,
    this.nextOffset,
    this.results,
    this.switchPmText,
    this.switchPmParameter});

  /// Parse from a json
  InlineQueryResults.fromJson(Map<String, dynamic> json)  {
    this.inlineQueryId = json['inline_query_id'];
    this.nextOffset = json['next_offset'];
    this.results = List<InlineQueryResult>.from((json['results'] ?? []).map((item) => InlineQueryResult.fromJson(item ?? <String, dynamic>{})).toList());
    this.switchPmText = json['switch_pm_text'];
    this.switchPmParameter = json['switch_pm_parameter'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_query_id": this.inlineQueryId,
      "next_offset": this.nextOffset,
      "results": this.results.map((i) => i.toJson()).toList(),
      "switch_pm_text": this.switchPmText,
      "switch_pm_parameter": this.switchPmParameter,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResults';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}