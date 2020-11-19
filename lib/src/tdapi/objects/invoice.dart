part of '../tdapi.dart';

class Invoice extends TdObject {
  /// Product invoice
  Invoice(
      {this.currency,
      this.priceParts,
      this.isTest,
      this.needName,
      this.needPhoneNumber,
      this.needEmailAddress,
      this.needShippingAddress,
      this.sendPhoneNumberToProvider,
      this.sendEmailAddressToProvider,
      this.isFlexible});

  /// [currency] ISO 4217 currency code
  String currency;

  /// [priceParts] A list of objects used to calculate the total price of the product
  List<LabeledPricePart> priceParts;

  /// [isTest] True, if the payment is a test payment
  bool isTest;

  /// [needName] True, if the user's name is needed for payment
  bool needName;

  /// [needPhoneNumber] True, if the user's phone number is needed for payment
  bool needPhoneNumber;

  /// [needEmailAddress] True, if the user's email address is needed for payment
  bool needEmailAddress;

  /// [needShippingAddress] True, if the user's shipping address is needed for payment
  bool needShippingAddress;

  /// [sendPhoneNumberToProvider] True, if the user's phone number will be sent to the provider
  bool sendPhoneNumberToProvider;

  /// [sendEmailAddressToProvider] True, if the user's email address will be sent to the provider
  bool sendEmailAddressToProvider;

  /// [isFlexible] True, if the total price depends on the shipping method
  bool isFlexible;

  /// Parse from a json
  Invoice.fromJson(Map<String, dynamic> json) {
    this.currency = json['currency'];
    this.priceParts = List<LabeledPricePart>.from((json['price_parts'] ?? [])
        .map((item) => LabeledPricePart.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.isTest = json['is_test'];
    this.needName = json['need_name'];
    this.needPhoneNumber = json['need_phone_number'];
    this.needEmailAddress = json['need_email_address'];
    this.needShippingAddress = json['need_shipping_address'];
    this.sendPhoneNumberToProvider = json['send_phone_number_to_provider'];
    this.sendEmailAddressToProvider = json['send_email_address_to_provider'];
    this.isFlexible = json['is_flexible'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "currency": this.currency,
      "price_parts": this.priceParts.map((i) => i.toJson()).toList(),
      "is_test": this.isTest,
      "need_name": this.needName,
      "need_phone_number": this.needPhoneNumber,
      "need_email_address": this.needEmailAddress,
      "need_shipping_address": this.needShippingAddress,
      "send_phone_number_to_provider": this.sendPhoneNumberToProvider,
      "send_email_address_to_provider": this.sendEmailAddressToProvider,
      "is_flexible": this.isFlexible,
    };
  }

  static const CONSTRUCTOR = 'invoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}
