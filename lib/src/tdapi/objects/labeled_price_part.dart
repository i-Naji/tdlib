part of '../tdapi.dart';

class LabeledPricePart extends TdObject {

  /// Portion of the price of a product (e.g., "delivery cost", "tax amount")
  const LabeledPricePart({
    required this.label,
    required this.amount,
  });
  
  /// [label] Label for this portion of the product price 
  final String label;

  /// [amount] Currency amount in the smallest units of the currency
  final int amount;
  
  /// Parse from a json
  factory LabeledPricePart.fromJson(Map<String, dynamic> json) => LabeledPricePart(
    label: json['label'],
    amount: json['amount'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "label": label,
      "amount": amount,
    };
  }
  
  LabeledPricePart copyWith({
    String? label,
    int? amount,
  }) => LabeledPricePart(
    label: label ?? this.label,
    amount: amount ?? this.amount,
  );

  static const CONSTRUCTOR = 'labeledPricePart';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
