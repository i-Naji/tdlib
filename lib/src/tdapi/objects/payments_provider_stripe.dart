part of '../tdapi.dart';

class PaymentsProviderStripe extends TdObject {
  /// Stripe payment provider
  PaymentsProviderStripe(
      {this.publishableKey,
      this.needCountry,
      this.needPostalCode,
      this.needCardholderName});

  /// [publishableKey] Stripe API publishable key
  String publishableKey;

  /// [needCountry] True, if the user country must be provided
  bool needCountry;

  /// [needPostalCode] True, if the user ZIP/postal code must be provided
  bool needPostalCode;

  /// [needCardholderName] True, if the cardholder name must be provided
  bool needCardholderName;

  /// Parse from a json
  PaymentsProviderStripe.fromJson(Map<String, dynamic> json) {
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

  @override
  String getConstructor() => CONSTRUCTOR;
}
