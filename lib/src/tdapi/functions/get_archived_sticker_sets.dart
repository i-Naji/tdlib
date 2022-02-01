part of '../tdapi.dart';

class GetArchivedStickerSets extends TdFunction {

  /// Returns a list of archived sticker sets
  const GetArchivedStickerSets({
    required this.isMasks,
    required this.offsetStickerSetId,
    required this.limit,
  });
  
  /// [isMasks] Pass true to return mask stickers sets; pass false to return ordinary sticker sets 
  final bool isMasks;

  /// [offsetStickerSetId] Identifier of the sticker set from which to return the result 
  final int offsetStickerSetId;

  /// [limit] The maximum number of sticker sets to return; up to 100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": isMasks,
      "offset_sticker_set_id": offsetStickerSetId,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetArchivedStickerSets copyWith({
    bool? isMasks,
    int? offsetStickerSetId,
    int? limit,
  }) => GetArchivedStickerSets(
    isMasks: isMasks ?? this.isMasks,
    offsetStickerSetId: offsetStickerSetId ?? this.offsetStickerSetId,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getArchivedStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
