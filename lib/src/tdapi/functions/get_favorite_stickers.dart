part of '../tdapi.dart';

class GetFavoriteStickers extends TdFunction {

  /// Returns favorite stickers
  const GetFavoriteStickers();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetFavoriteStickers copyWith() => const GetFavoriteStickers();

  static const CONSTRUCTOR = 'getFavoriteStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
