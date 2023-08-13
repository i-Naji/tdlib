part of '../tdapi.dart';

class PremiumStatePaymentOption extends TdObject {
  /// Describes an option for buying or upgrading Telegram Premium for self
  const PremiumStatePaymentOption({
    required this.paymentOption,
    required this.isCurrent,
    required this.isUpgrade,
    required this.lastTransactionId,
  });

  /// [paymentOption] Information about the payment option
  final PremiumPaymentOption paymentOption;

  /// [isCurrent] True, if this is the currently used Telegram Premium subscription option
  final bool isCurrent;

  /// [isUpgrade] True, if the payment option can be used to upgrade the existing Telegram Premium subscription
  final bool isUpgrade;

  /// [lastTransactionId] Identifier of the last in-store transaction for the currently used option
  final String lastTransactionId;

  /// Parse from a json
  factory PremiumStatePaymentOption.fromJson(Map<String, dynamic> json) =>
      PremiumStatePaymentOption(
        paymentOption: PremiumPaymentOption.fromJson(json['payment_option']),
        isCurrent: json['is_current'],
        isUpgrade: json['is_upgrade'],
        lastTransactionId: json['last_transaction_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "payment_option": paymentOption.toJson(),
      "is_current": isCurrent,
      "is_upgrade": isUpgrade,
      "last_transaction_id": lastTransactionId,
    };
  }

  PremiumStatePaymentOption copyWith({
    PremiumPaymentOption? paymentOption,
    bool? isCurrent,
    bool? isUpgrade,
    String? lastTransactionId,
  }) =>
      PremiumStatePaymentOption(
        paymentOption: paymentOption ?? this.paymentOption,
        isCurrent: isCurrent ?? this.isCurrent,
        isUpgrade: isUpgrade ?? this.isUpgrade,
        lastTransactionId: lastTransactionId ?? this.lastTransactionId,
      );

  static const CONSTRUCTOR = 'premiumStatePaymentOption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
