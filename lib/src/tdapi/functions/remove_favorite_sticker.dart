part of '../tdapi.dart';

class RemoveFavoriteSticker extends TdFunction {

  /// Removes a sticker from the list of favorite stickers
  const RemoveFavoriteSticker({
    required this.sticker,
  });
  
  /// [sticker] Sticker file to delete from the list
  final InputFile sticker;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "@extra": extra,
    };
  }
  
  RemoveFavoriteSticker copyWith({
    InputFile? sticker,
  }) => RemoveFavoriteSticker(
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'removeFavoriteSticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
