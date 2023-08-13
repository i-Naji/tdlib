part of '../tdapi.dart';

class PremiumFeaturePromotionAnimation extends TdObject {
  /// Describes a promotion animation for a Premium feature
  const PremiumFeaturePromotionAnimation({
    required this.feature,
    required this.animation,
  });

  /// [feature] Premium feature
  final PremiumFeature feature;

  /// [animation] Promotion animation for the feature
  final Animation animation;

  /// Parse from a json
  factory PremiumFeaturePromotionAnimation.fromJson(
          Map<String, dynamic> json) =>
      PremiumFeaturePromotionAnimation(
        feature: PremiumFeature.fromJson(json['feature']),
        animation: Animation.fromJson(json['animation']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "feature": feature.toJson(),
      "animation": animation.toJson(),
    };
  }

  PremiumFeaturePromotionAnimation copyWith({
    PremiumFeature? feature,
    Animation? animation,
  }) =>
      PremiumFeaturePromotionAnimation(
        feature: feature ?? this.feature,
        animation: animation ?? this.animation,
      );

  static const CONSTRUCTOR = 'premiumFeaturePromotionAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
