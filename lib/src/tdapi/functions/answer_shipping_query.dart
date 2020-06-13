part of '../tdapi.dart';

class AnswerShippingQuery extends TdFunction {
  int shippingQueryId;
  List<List<ShippingOption>> shippingOptions;
  String errorMessage;
  dynamic extra;

  /// Sets the result of a shipping query; for bots only. 
  /// [shippingQueryId] Identifier of the shipping query . 
  /// [shippingOptions] Available shipping options . 
  /// [errorMessage] An error message, empty on success
  AnswerShippingQuery({this.shippingQueryId,
    this.shippingOptions,
    this.errorMessage});

  /// Parse from a json
  AnswerShippingQuery.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "shipping_query_id": this.shippingQueryId,
      "shipping_options": this.shippingOptions.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "error_message": this.errorMessage,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'answerShippingQuery';
}