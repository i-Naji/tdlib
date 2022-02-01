part of '../tdapi.dart';

class AnswerPreCheckoutQuery extends TdFunction {

  /// Sets the result of a pre-checkout query; for bots only
  const AnswerPreCheckoutQuery({
    required this.preCheckoutQueryId,
    required this.errorMessage,
  });
  
  /// [preCheckoutQueryId] Identifier of the pre-checkout query 
  final int preCheckoutQueryId;

  /// [errorMessage] An error message, empty on success
  final String errorMessage;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "pre_checkout_query_id": preCheckoutQueryId,
      "error_message": errorMessage,
      "@extra": extra,
    };
  }
  
  AnswerPreCheckoutQuery copyWith({
    int? preCheckoutQueryId,
    String? errorMessage,
  }) => AnswerPreCheckoutQuery(
    preCheckoutQueryId: preCheckoutQueryId ?? this.preCheckoutQueryId,
    errorMessage: errorMessage ?? this.errorMessage,
  );

  static const CONSTRUCTOR = 'answerPreCheckoutQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
