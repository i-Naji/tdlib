part of '../tdapi.dart';

class PaymentProvider extends TdObject {
  /// Contains information about a payment provider
  const PaymentProvider();

  /// a PaymentProvider return type can be :
  /// * [PaymentProviderSmartGlocal]
  /// * [PaymentProviderStripe]
  /// * [PaymentProviderOther]
  factory PaymentProvider.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PaymentProviderSmartGlocal.CONSTRUCTOR:
        return PaymentProviderSmartGlocal.fromJson(json);
      case PaymentProviderStripe.CONSTRUCTOR:
        return PaymentProviderStripe.fromJson(json);
      case PaymentProviderOther.CONSTRUCTOR:
        return PaymentProviderOther.fromJson(json);
      default:
        return const PaymentProvider();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  PaymentProvider copyWith() => const PaymentProvider();

  static const CONSTRUCTOR = 'paymentProvider';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PaymentProviderSmartGlocal extends PaymentProvider {
  /// Smart Glocal payment provider
  const PaymentProviderSmartGlocal({
    required this.publicToken,
  });

  /// [publicToken] Public payment token
  final String publicToken;

  /// Parse from a json
  factory PaymentProviderSmartGlocal.fromJson(Map<String, dynamic> json) =>
      PaymentProviderSmartGlocal(
        publicToken: json['public_token'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "public_token": publicToken,
    };
  }

  @override
  PaymentProviderSmartGlocal copyWith({
    String? publicToken,
  }) =>
      PaymentProviderSmartGlocal(
        publicToken: publicToken ?? this.publicToken,
      );

  static const CONSTRUCTOR = 'paymentProviderSmartGlocal';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PaymentProviderStripe extends PaymentProvider {
  /// Stripe payment provider
  const PaymentProviderStripe({
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
  factory PaymentProviderStripe.fromJson(Map<String, dynamic> json) =>
      PaymentProviderStripe(
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

  @override
  PaymentProviderStripe copyWith({
    String? publishableKey,
    bool? needCountry,
    bool? needPostalCode,
    bool? needCardholderName,
  }) =>
      PaymentProviderStripe(
        publishableKey: publishableKey ?? this.publishableKey,
        needCountry: needCountry ?? this.needCountry,
        needPostalCode: needPostalCode ?? this.needPostalCode,
        needCardholderName: needCardholderName ?? this.needCardholderName,
      );

  static const CONSTRUCTOR = 'paymentProviderStripe';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PaymentProviderOther extends PaymentProvider {
  /// Some other payment provider, for which a web payment form must be shown
  const PaymentProviderOther({
    required this.url,
  });

  /// [url] Payment form URL
  final String url;

  /// Parse from a json
  factory PaymentProviderOther.fromJson(Map<String, dynamic> json) =>
      PaymentProviderOther(
        url: json['url'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
    };
  }

  @override
  PaymentProviderOther copyWith({
    String? url,
  }) =>
      PaymentProviderOther(
        url: url ?? this.url,
      );

  static const CONSTRUCTOR = 'paymentProviderOther';

  @override
  String getConstructor() => CONSTRUCTOR;
}
