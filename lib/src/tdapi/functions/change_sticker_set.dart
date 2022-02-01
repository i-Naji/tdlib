part of '../tdapi.dart';

class ChangeStickerSet extends TdFunction {

  /// Installs/uninstalls or activates/archives a sticker set
  const ChangeStickerSet({
    required this.setId,
    required this.isInstalled,
    required this.isArchived,
  });
  
  /// [setId] Identifier of the sticker set 
  final int setId;

  /// [isInstalled] The new value of is_installed 
  final bool isInstalled;

  /// [isArchived] The new value of is_archived. A sticker set can't be installed and archived simultaneously
  final bool isArchived;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "set_id": setId,
      "is_installed": isInstalled,
      "is_archived": isArchived,
      "@extra": extra,
    };
  }
  
  ChangeStickerSet copyWith({
    int? setId,
    bool? isInstalled,
    bool? isArchived,
  }) => ChangeStickerSet(
    setId: setId ?? this.setId,
    isInstalled: isInstalled ?? this.isInstalled,
    isArchived: isArchived ?? this.isArchived,
  );

  static const CONSTRUCTOR = 'changeStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
