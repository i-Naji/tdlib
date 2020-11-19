part of '../tdapi.dart';

class ChangeStickerSet extends TdFunction {
  /// Installs/uninstalls or activates/archives a sticker set
  ChangeStickerSet({this.setId, this.isInstalled, this.isArchived});

  /// [setId] Identifier of the sticker set
  int setId;

  /// [isInstalled] The new value of is_installed
  bool isInstalled;

  /// [isArchived] The new value of is_archived. A sticker set can't be installed and archived simultaneously
  bool isArchived;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ChangeStickerSet.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "set_id": this.setId,
      "is_installed": this.isInstalled,
      "is_archived": this.isArchived,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'changeStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
