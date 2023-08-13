part of '../tdapi.dart';

class GetPremiumStickerExamples extends TdFunction {
  /// Returns examples of premium stickers for demonstration purposes
  const GetPremiumStickerExamples();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetPremiumStickerExamples copyWith() => const GetPremiumStickerExamples();

  static const CONSTRUCTOR = 'getPremiumStickerExamples';

  @override
  String getConstructor() => CONSTRUCTOR;
}
