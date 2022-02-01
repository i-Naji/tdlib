part of '../tdapi.dart';

class ViewTrendingStickerSets extends TdFunction {

  /// Informs the server that some trending sticker sets have been viewed by the user
  const ViewTrendingStickerSets({
    required this.stickerSetIds,
  });
  
  /// [stickerSetIds] Identifiers of viewed trending sticker sets
  final List<int> stickerSetIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set_ids": stickerSetIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  ViewTrendingStickerSets copyWith({
    List<int>? stickerSetIds,
  }) => ViewTrendingStickerSets(
    stickerSetIds: stickerSetIds ?? this.stickerSetIds,
  );

  static const CONSTRUCTOR = 'viewTrendingStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
