part of '../tdapi.dart';

class PremiumSource extends TdObject {
  /// Describes a source from which the Premium features screen is opened
  const PremiumSource();

  /// a PremiumSource return type can be :
  /// * [PremiumSourceLimitExceeded]
  /// * [PremiumSourceFeature]
  /// * [PremiumSourceLink]
  /// * [PremiumSourceSettings]
  factory PremiumSource.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PremiumSourceLimitExceeded.CONSTRUCTOR:
        return PremiumSourceLimitExceeded.fromJson(json);
      case PremiumSourceFeature.CONSTRUCTOR:
        return PremiumSourceFeature.fromJson(json);
      case PremiumSourceLink.CONSTRUCTOR:
        return PremiumSourceLink.fromJson(json);
      case PremiumSourceSettings.CONSTRUCTOR:
        return PremiumSourceSettings.fromJson(json);
      default:
        return const PremiumSource();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  PremiumSource copyWith() => const PremiumSource();

  static const CONSTRUCTOR = 'premiumSource';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumSourceLimitExceeded extends PremiumSource {
  /// A limit was exceeded
  const PremiumSourceLimitExceeded({
    required this.limitType,
  });

  /// [limitType] Type of the exceeded limit
  final PremiumLimitType limitType;

  /// Parse from a json
  factory PremiumSourceLimitExceeded.fromJson(Map<String, dynamic> json) =>
      PremiumSourceLimitExceeded(
        limitType: PremiumLimitType.fromJson(json['limit_type']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "limit_type": limitType.toJson(),
    };
  }

  @override
  PremiumSourceLimitExceeded copyWith({
    PremiumLimitType? limitType,
  }) =>
      PremiumSourceLimitExceeded(
        limitType: limitType ?? this.limitType,
      );

  static const CONSTRUCTOR = 'premiumSourceLimitExceeded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumSourceFeature extends PremiumSource {
  /// A user tried to use a Premium feature
  const PremiumSourceFeature({
    required this.feature,
  });

  /// [feature] The used feature
  final PremiumFeature feature;

  /// Parse from a json
  factory PremiumSourceFeature.fromJson(Map<String, dynamic> json) =>
      PremiumSourceFeature(
        feature: PremiumFeature.fromJson(json['feature']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "feature": feature.toJson(),
    };
  }

  @override
  PremiumSourceFeature copyWith({
    PremiumFeature? feature,
  }) =>
      PremiumSourceFeature(
        feature: feature ?? this.feature,
      );

  static const CONSTRUCTOR = 'premiumSourceFeature';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumSourceLink extends PremiumSource {
  /// A user opened an internal link of the type internalLinkTypePremiumFeatures
  const PremiumSourceLink({
    required this.referrer,
  });

  /// [referrer] The referrer from the link
  final String referrer;

  /// Parse from a json
  factory PremiumSourceLink.fromJson(Map<String, dynamic> json) =>
      PremiumSourceLink(
        referrer: json['referrer'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "referrer": referrer,
    };
  }

  @override
  PremiumSourceLink copyWith({
    String? referrer,
  }) =>
      PremiumSourceLink(
        referrer: referrer ?? this.referrer,
      );

  static const CONSTRUCTOR = 'premiumSourceLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PremiumSourceSettings extends PremiumSource {
  /// A user opened the Premium features screen from settings
  const PremiumSourceSettings();

  /// Parse from a json
  factory PremiumSourceSettings.fromJson(Map<String, dynamic> json) =>
      const PremiumSourceSettings();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  PremiumSourceSettings copyWith() => const PremiumSourceSettings();

  static const CONSTRUCTOR = 'premiumSourceSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
