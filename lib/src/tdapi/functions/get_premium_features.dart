part of '../tdapi.dart';

class GetPremiumFeatures extends TdFunction {
  /// Returns information about features, available to Premium users
  const GetPremiumFeatures({
    this.source,
  });

  /// [source] Source of the request; pass null if the method is called from some non-standard source
  final PremiumSource? source;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "source": source?.toJson(),
      "@extra": extra,
    };
  }

  GetPremiumFeatures copyWith({
    PremiumSource? source,
  }) =>
      GetPremiumFeatures(
        source: source ?? this.source,
      );

  static const CONSTRUCTOR = 'getPremiumFeatures';

  @override
  String getConstructor() => CONSTRUCTOR;
}
