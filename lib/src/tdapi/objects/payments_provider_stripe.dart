part of '../tdapi.dart';

class PaymentsProviderStripe extends TdObject {

  /// Stripe payment provider
  const PaymentsProviderStripe({
    required this.publishableKey,
    required this.needCountry,
    required this.needPostalCode,
    required this.needCardholderName,
  });
  
  /// [publishableKey] Stripe API publishable key 
  final String publishableKey;

  /// [needCountry] True, if the user country must be provided 
  final bool needCountry;

  /// [needPostalCode] True, if the user ZIP/postal code must be provided 
  final bool needPostalCode;

  /// [needCardholderName] True, if the cardholder name must be provided
  final bool needCardholderName;
  
  /// Parse from a json
  factory PaymentsProviderStripe.fromJson(Map<String, dynamic> json) => PaymentsProviderStripe(
    publishableKey: json['publishable_key'],
    needCountry: json['need_country'],
    needPostalCode: json['need_postal_code'],
    needCardholderName: json['need_cardholder_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "publishable_key": publishableKey,
      "need_country": needCountry,
      "need_postal_code": needPostalCode,
      "need_cardholder_name": needCardholderName,
    };
  }
  
  PaymentsProviderStripe copyWith({
    String? publishableKey,
    bool? needCountry,
    bool? needPostalCode,
    bool? needCardholderName,
  }) => PaymentsProviderStripe(
    publishableKey: publishableKey ?? this.publishableKey,
    needCountry: needCountry ?? this.needCountry,
    needPostalCode: needPostalCode ?? this.needPostalCode,
    needCardholderName: needCardholderName ?? this.needCardholderName,
  );

  static const CONSTRUCTOR = 'paymentsProviderStripe';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
