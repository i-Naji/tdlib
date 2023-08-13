part of '../tdapi.dart';

class ViewPremiumFeature extends TdFunction {
  /// Informs TDLib that the user viewed detailed information about a Premium feature on the Premium features screen
  const ViewPremiumFeature({
    required this.feature,
  });

  /// [feature] The viewed premium feature
  final PremiumFeature feature;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "feature": feature.toJson(),
      "@extra": extra,
    };
  }

  ViewPremiumFeature copyWith({
    PremiumFeature? feature,
  }) =>
      ViewPremiumFeature(
        feature: feature ?? this.feature,
      );

  static const CONSTRUCTOR = 'viewPremiumFeature';

  @override
  String getConstructor() => CONSTRUCTOR;
}
