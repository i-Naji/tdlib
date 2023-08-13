part of '../tdapi.dart';

class GetPremiumLimit extends TdFunction {
  /// Returns information about a limit, increased for Premium users. Returns a 404 error if the limit is unknown
  const GetPremiumLimit({
    required this.limitType,
  });

  /// [limitType] Type of the limit
  final PremiumLimitType limitType;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "limit_type": limitType.toJson(),
      "@extra": extra,
    };
  }

  GetPremiumLimit copyWith({
    PremiumLimitType? limitType,
  }) =>
      GetPremiumLimit(
        limitType: limitType ?? this.limitType,
      );

  static const CONSTRUCTOR = 'getPremiumLimit';

  @override
  String getConstructor() => CONSTRUCTOR;
}
