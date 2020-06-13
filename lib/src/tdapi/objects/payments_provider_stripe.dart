part of '../tdapi.dart';

class PaymentsProviderStripe extends TdObject {
  String publishableKey;
  bool needCountry;
  bool needPostalCode;
  bool needCardholderName;

  /// Stripe payment provider. 
  /// [publishableKey] Stripe API publishable key . 
  /// [needCountry] True, if the user country must be provided . 
  /// [needPostalCode] True, if the user ZIP/postal code must be provided . 
  /// [needCardholderName] True, if the cardholder name must be provided
  PaymentsProviderStripe({this.publishableKey,
    this.needCountry,
    this.needPostalCode,
    this.needCardholderName});

  /// Parse from a json
  PaymentsProviderStripe.fromJson(Map<String, dynamic> json)  {
    this.publishableKey = json['publishable_key'];
    this.needCountry = json['need_country'];
    this.needPostalCode = json['need_postal_code'];
    this.needCardholderName = json['need_cardholder_name'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "publishable_key": this.publishableKey,
      "need_country": this.needCountry,
      "need_postal_code": this.needPostalCode,
      "need_cardholder_name": this.needCardholderName,
    };
  }

  static const CONSTRUCTOR = 'paymentsProviderStripe';
}