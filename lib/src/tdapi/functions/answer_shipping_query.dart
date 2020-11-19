part of '../tdapi.dart';

class AnswerShippingQuery extends TdFunction {
  /// Sets the result of a shipping query; for bots only
  AnswerShippingQuery(
      {this.shippingQueryId, this.shippingOptions, this.errorMessage});

  /// [shippingQueryId] Identifier of the shipping query
  int shippingQueryId;

  /// [shippingOptions] Available shipping options
  List<ShippingOption> shippingOptions;

  /// [errorMessage] An error message, empty on success
  String errorMessage;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  AnswerShippingQuery.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "shipping_query_id": this.shippingQueryId,
      "shipping_options": this.shippingOptions.map((i) => i.toJson()).toList(),
      "error_message": this.errorMessage,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'answerShippingQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}
