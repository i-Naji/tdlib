part of '../tdapi.dart';

class AnswerCustomQuery extends TdFunction {
  /// Answers a custom query; for bots only
  AnswerCustomQuery({this.customQueryId, this.data});

  /// [customQueryId] Identifier of a custom query
  int customQueryId;

  /// [data] JSON-serialized answer to the query
  String data;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  AnswerCustomQuery.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "custom_query_id": this.customQueryId,
      "data": this.data,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'answerCustomQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}
