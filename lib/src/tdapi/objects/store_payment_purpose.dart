part of '../tdapi.dart';

class StorePaymentPurpose extends TdObject {
  /// Describes a purpose of an in-store payment
  const StorePaymentPurpose();

  /// a StorePaymentPurpose return type can be :
  /// * [StorePaymentPurposePremiumSubscription]
  /// * [StorePaymentPurposeGiftedPremium]
  factory StorePaymentPurpose.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StorePaymentPurposePremiumSubscription.CONSTRUCTOR:
        return StorePaymentPurposePremiumSubscription.fromJson(json);
      case StorePaymentPurposeGiftedPremium.CONSTRUCTOR:
        return StorePaymentPurposeGiftedPremium.fromJson(json);
      default:
        return const StorePaymentPurpose();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  StorePaymentPurpose copyWith() => const StorePaymentPurpose();

  static const CONSTRUCTOR = 'storePaymentPurpose';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StorePaymentPurposePremiumSubscription extends StorePaymentPurpose {
  /// The user subscribed to Telegram Premium
  const StorePaymentPurposePremiumSubscription({
    required this.isRestore,
    required this.isUpgrade,
  });

  /// [isRestore] Pass true if this is a restore of a Telegram Premium purchase; only for App Store
  final bool isRestore;

  /// [isUpgrade] Pass true if this is an upgrade from a monthly subscription to early subscription; only for App Store
  final bool isUpgrade;

  /// Parse from a json
  factory StorePaymentPurposePremiumSubscription.fromJson(
          Map<String, dynamic> json) =>
      StorePaymentPurposePremiumSubscription(
        isRestore: json['is_restore'],
        isUpgrade: json['is_upgrade'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_restore": isRestore,
      "is_upgrade": isUpgrade,
    };
  }

  @override
  StorePaymentPurposePremiumSubscription copyWith({
    bool? isRestore,
    bool? isUpgrade,
  }) =>
      StorePaymentPurposePremiumSubscription(
        isRestore: isRestore ?? this.isRestore,
        isUpgrade: isUpgrade ?? this.isUpgrade,
      );

  static const CONSTRUCTOR = 'storePaymentPurposePremiumSubscription';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StorePaymentPurposeGiftedPremium extends StorePaymentPurpose {
  /// The user gifted Telegram Premium to another user
  const StorePaymentPurposeGiftedPremium({
    required this.userId,
    required this.currency,
    required this.amount,
  });

  /// [userId] Identifier of the user for which Premium was gifted
  final int userId;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// Parse from a json
  factory StorePaymentPurposeGiftedPremium.fromJson(
          Map<String, dynamic> json) =>
      StorePaymentPurposeGiftedPremium(
        userId: json['user_id'],
        currency: json['currency'],
        amount: json['amount'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "currency": currency,
      "amount": amount,
    };
  }

  @override
  StorePaymentPurposeGiftedPremium copyWith({
    int? userId,
    String? currency,
    int? amount,
  }) =>
      StorePaymentPurposeGiftedPremium(
        userId: userId ?? this.userId,
        currency: currency ?? this.currency,
        amount: amount ?? this.amount,
      );

  static const CONSTRUCTOR = 'storePaymentPurposeGiftedPremium';

  @override
  String getConstructor() => CONSTRUCTOR;
}
