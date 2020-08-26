part of '../tdapi.dart';

class AnswerPreCheckoutQuery extends TdFunction {
  String preCheckoutQueryId;
  String errorMessage;
  dynamic extra;

  /// Sets the result of a pre-checkout query; for bots only. 
  /// [preCheckoutQueryId] Identifier of the pre-checkout query . 
  /// [errorMessage] An error message, empty on success
  AnswerPreCheckoutQuery({this.preCheckoutQueryId,
    this.errorMessage});

  /// Parse from a json
  AnswerPreCheckoutQuery.fromJson(Map<String, dynamic> json) ;

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