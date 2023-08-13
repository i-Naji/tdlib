part of '../tdapi.dart';

class ReorderInstalledStickerSets extends TdFunction {
  /// Changes the order of installed sticker sets
  const ReorderInstalledStickerSets({
    required this.stickerType,
    required this.stickerSetIds,
  });

  /// [stickerType] Type of the sticker sets to reorder
  final StickerType stickerType;

  /// [stickerSetIds] Identifiers of installed sticker sets in the new correct order
  final List<int> stickerSetIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_type": stickerType.toJson(),
      "sticker_set_ids": stickerSetIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }

  ReorderInstalledStickerSets copyWith({
    StickerType? stickerType,
    List<int>? stickerSetIds,
  }) =>
      ReorderInstalledStickerSets(
        stickerType: stickerType ?? this.stickerType,
        stickerSetIds: stickerSetIds ?? this.stickerSetIds,
      );

  static const CONSTRUCTOR = 'reorderInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
