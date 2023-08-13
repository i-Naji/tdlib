part of '../tdapi.dart';

class DeleteStickerSet extends TdFunction {
  /// Deleted a sticker set; for bots only
  const DeleteStickerSet({
    required this.name,
  });

  /// [name] Sticker set name
  final String name;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "@extra": extra,
    };
  }

  DeleteStickerSet copyWith({
    String? name,
  }) =>
      DeleteStickerSet(
        name: name ?? this.name,
      );

  static const CONSTRUCTOR = 'deleteStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
