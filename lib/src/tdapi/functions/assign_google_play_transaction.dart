part of '../tdapi.dart';

class AssignGooglePlayTransaction extends TdFunction {
  /// Informs server about a purchase through Google Play. For official applications only
  const AssignGooglePlayTransaction({
    required this.packageName,
    required this.storeProductId,
    required this.purchaseToken,
    required this.purpose,
  });

  /// [packageName] Application package name
  final String packageName;

  /// [storeProductId] Identifier of the purchased store product
  final String storeProductId;

  /// [purchaseToken] Google Play purchase token
  final String purchaseToken;

  /// [purpose] Transaction purpose
  final StorePaymentPurpose purpose;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "package_name": packageName,
      "store_product_id": storeProductId,
      "purchase_token": purchaseToken,
      "purpose": purpose.toJson(),
      "@extra": extra,
    };
  }

  AssignGooglePlayTransaction copyWith({
    String? packageName,
    String? storeProductId,
    String? purchaseToken,
    StorePaymentPurpose? purpose,
  }) =>
      AssignGooglePlayTransaction(
        packageName: packageName ?? this.packageName,
        storeProductId: storeProductId ?? this.storeProductId,
        purchaseToken: purchaseToken ?? this.purchaseToken,
        purpose: purpose ?? this.purpose,
      );

  static const CONSTRUCTOR = 'assignGooglePlayTransaction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
