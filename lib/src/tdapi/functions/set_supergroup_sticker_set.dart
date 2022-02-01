part of '../tdapi.dart';

class SetSupergroupStickerSet extends TdFunction {

  /// Changes the sticker set of a supergroup; requires can_change_info administrator right
  const SetSupergroupStickerSet({
    required this.supergroupId,
    required this.stickerSetId,
  });
  
  /// [supergroupId] Identifier of the supergroup 
  final int supergroupId;

  /// [stickerSetId] New value of the supergroup sticker set identifier. Use 0 to remove the supergroup sticker set
  final int stickerSetId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "sticker_set_id": stickerSetId,
      "@extra": extra,
    };
  }
  
  SetSupergroupStickerSet copyWith({
    int? supergroupId,
    int? stickerSetId,
  }) => SetSupergroupStickerSet(
    supergroupId: supergroupId ?? this.supergroupId,
    stickerSetId: stickerSetId ?? this.stickerSetId,
  );

  static const CONSTRUCTOR = 'setSupergroupStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
