part of '../tdapi.dart';

class AnswerWebAppQuery extends TdFunction {
  /// Sets the result of interaction with a Web App and sends corresponding message on behalf of the user to the chat from which the query originated; for bots only
  const AnswerWebAppQuery({
    required this.webAppQueryId,
    required this.result,
  });

  /// [webAppQueryId] Identifier of the Web App query
  final String webAppQueryId;

  /// [result] The result of the query
  final InputInlineQueryResult result;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "web_app_query_id": webAppQueryId,
      "result": result.toJson(),
      "@extra": extra,
    };
  }

  AnswerWebAppQuery copyWith({
    String? webAppQueryId,
    InputInlineQueryResult? result,
  }) =>
      AnswerWebAppQuery(
        webAppQueryId: webAppQueryId ?? this.webAppQueryId,
        result: result ?? this.result,
      );

  static const CONSTRUCTOR = 'answerWebAppQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}
