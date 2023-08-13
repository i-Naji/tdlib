part of '../tdapi.dart';

class AssignAppStoreTransaction extends TdFunction {
  /// Informs server about a purchase through App Store. For official applications only
  const AssignAppStoreTransaction({
    required this.receipt,
    required this.purpose,
  });

  /// [receipt] App Store receipt
  final String receipt;

  /// [purpose] Transaction purpose
  final StorePaymentPurpose purpose;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "receipt": receipt,
      "purpose": purpose.toJson(),
      "@extra": extra,
    };
  }

  AssignAppStoreTransaction copyWith({
    String? receipt,
    StorePaymentPurpose? purpose,
  }) =>
      AssignAppStoreTransaction(
        receipt: receipt ?? this.receipt,
        purpose: purpose ?? this.purpose,
      );

  static const CONSTRUCTOR = 'assignAppStoreTransaction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
