part of '../tdapi.dart';

class GetInstalledStickerSets extends TdFunction {
  /// Returns a list of installed sticker sets
  const GetInstalledStickerSets({
    required this.stickerType,
  });

  /// [stickerType] Type of the sticker sets to return
  final StickerType stickerType;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_type": stickerType.toJson(),
      "@extra": extra,
    };
  }

  GetInstalledStickerSets copyWith({
    StickerType? stickerType,
  }) =>
      GetInstalledStickerSets(
        stickerType: stickerType ?? this.stickerType,
      );

  static const CONSTRUCTOR = 'getInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
