part of '../tdapi.dart';

class AnswerPreCheckoutQuery extends TdFunction {
  /// Sets the result of a pre-checkout query; for bots only
  AnswerPreCheckoutQuery({this.preCheckoutQueryId, this.errorMessage});

  /// [preCheckoutQueryId] Identifier of the pre-checkout query
  int preCheckoutQueryId;

  /// [errorMessage] An error message, empty on success
  String errorMessage;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  AnswerPreCheckoutQuery.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "pre_checkout_query_id": this.preCheckoutQueryId,
      "error_message": this.errorMessage,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'answerPreCheckoutQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}
