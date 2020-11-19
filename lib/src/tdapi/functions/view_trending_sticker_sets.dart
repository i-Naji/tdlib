part of '../tdapi.dart';

class ViewTrendingStickerSets extends TdFunction {
  /// Informs the server that some trending sticker sets have been viewed by the user
  ViewTrendingStickerSets({this.stickerSetIds});

  /// [stickerSetIds] Identifiers of viewed trending sticker sets
  List<int> stickerSetIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ViewTrendingStickerSets.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set_ids": this.stickerSetIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'viewTrendingStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
