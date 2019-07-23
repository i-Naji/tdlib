part of '../tdapi.dart';

class LabeledPricePart implements TdObject {
  String label;
  int amount;

  /// Portion of the price of a product (e.g., "delivery cost", "tax amount").
  ///[label] Label for this portion of the product price .
  /// [amount] Currency amount in minimal quantity of the currency
  LabeledPricePart({this.label, this.amount});

  /// Parse from a json
  LabeledPricePart.fromJson(Map<String, dynamic> json) {
    this.label = json['label'];
    this.amount = json['amount'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "label": this.label, "amount": this.amount};
  }

  static const String CONSTRUCTOR = "labeledPricePart";

  @override
  String getConstructor() => CONSTRUCTOR;
}
