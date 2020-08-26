part of '../tdapi.dart';

class ReorderInstalledStickerSets extends TdFunction {
  bool isMasks;
  List<String> stickerSetIds;
  dynamic extra;

  /// Changes the order of installed sticker sets. 
  /// [isMasks] Pass true to change the order of mask sticker sets; pass false to change the order of ordinary sticker sets . 
  /// [stickerSetIds] Identifiers of installed sticker sets in the new correct order
  ReorderInstalledStickerSets({this.isMasks,
    this.stickerSetIds});

  /// Parse from a json
  ReorderInstalledStickerSets.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": this.isMasks,
      "sticker_set_ids": this.stickerSetIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'reorderInstalledStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}