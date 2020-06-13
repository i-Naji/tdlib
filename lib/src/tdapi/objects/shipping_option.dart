part of '../tdapi.dart';

class ShippingOption extends TdObject {
  String id;
  String title;
  List<List<LabeledPricePart>> priceParts;

  /// One shipping option. 
  /// [id] Shipping option identifier . 
  /// [title] Option title . 
  /// [priceParts] A list of objects used to calculate the total shipping costs
  ShippingOption({this.id,
    this.title,
    this.priceParts});

  /// Parse from a json
  ShippingOption.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.title = json['title'];
    this.priceParts = List<List<LabeledPricePart>>.from((json['price_parts'] ?? []).map((item) => List<LabeledPricePart>.from((item ?? []).map((innerItem) => LabeledPricePart.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "price_parts": this.priceParts.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'shippingOption';
}