part of '../tdapi.dart';

class GetStickerSet extends TdFunction {

  /// Returns information about a sticker set by its identifier
  const GetStickerSet({
    required this.setId,
  });
  
  /// [setId] Identifier of the sticker set
  final int setId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "set_id": setId,
      "@extra": extra,
    };
  }
  
  GetStickerSet copyWith({
    int? setId,
  }) => GetStickerSet(
    setId: setId ?? this.setId,
  );

  static const CONSTRUCTOR = 'getStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
