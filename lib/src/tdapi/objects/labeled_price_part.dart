part of '../tdapi.dart';

class LabeledPricePart extends TdObject {
  /// Portion of the price of a product (e.g., "delivery cost", "tax amount")
  LabeledPricePart({this.label, this.amount});

  /// [label] Label for this portion of the product price
  String label;

  /// [amount] Currency amount in minimal quantity of the currency
  int amount;

  /// Parse from a json
  LabeledPricePart.fromJson(Map<String, dynamic> json) {
    this.label = json['label'];
    this.amount = json['amount'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "label": this.label,
      "amount": this.amount,
    };
  }

  static const CONSTRUCTOR = 'labeledPricePart';

  @override
  String getConstructor() => CONSTRUCTOR;
}
