part of '../tdapi.dart';

class ReorderInstalledStickerSets extends TdFunction {

  /// Changes the order of installed sticker sets
  const ReorderInstalledStickerSets({
    required this.isMasks,
    required this.stickerSetIds,
  });
  
  /// [isMasks] Pass true to change the order of mask sticker sets; pass false to change the order of ordinary sticker sets 
  final bool isMasks;

  /// [stickerSetIds] Identifiers of installed sticker sets in the new correct order
  final List<int> stickerSetIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": isMasks,
      "sticker_set_ids": stickerSetIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  ReorderInstalledStickerSets copyWith({
    bool? isMasks,
    List<int>? stickerSetIds,
  }) => ReorderInstalledStickerSets(
    isMasks: isMasks ?? this.isMasks,
    stickerSetIds: stickerSetIds ?? this.stickerSetIds,
  );

  static const CONSTRUCTOR = 'reorderInstalledStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
