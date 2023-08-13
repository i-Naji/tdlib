part of '../tdapi.dart';

class GetPremiumStickers extends TdFunction {
  /// Returns premium stickers from regular sticker sets
  const GetPremiumStickers({
    required this.limit,
  });

  /// [limit] The maximum number of stickers to be returned; 0-100
  final int limit;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "limit": limit,
      "@extra": extra,
    };
  }

  GetPremiumStickers copyWith({
    int? limit,
  }) =>
      GetPremiumStickers(
        limit: limit ?? this.limit,
      );

  static const CONSTRUCTOR = 'getPremiumStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
