part of '../tdapi.dart';

class ViewTrendingStickerSets extends TLFunction {
  List<int> stickerSetIds;
  dynamic extra;

  /// Informs the server that some trending sticker sets have been viewed by the user.
  ///[stickerSetIds] Identifiers of viewed trending sticker sets
  ViewTrendingStickerSets({this.stickerSetIds});

  /// Parse from a json
  ViewTrendingStickerSets.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set_ids": this.stickerSetIds,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "viewTrendingStickerSets";

  @override
  String getConstructor() => CONSTRUCTOR;
}
