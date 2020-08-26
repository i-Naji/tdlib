part of '../tdapi.dart';

class ChangeStickerSet extends TdFunction {
  String setId;
  bool isInstalled;
  bool isArchived;
  dynamic extra;

  /// Installs/uninstalls or activates/archives a sticker set. 
  /// [setId] Identifier of the sticker set . 
  /// [isInstalled] The new value of is_installed . 
  /// [isArchived] The new value of is_archived. A sticker set can't be installed and archived simultaneously
  ChangeStickerSet({this.setId,
    this.isInstalled,
    this.isArchived});

  /// Parse from a json
  ChangeStickerSet.fromJson(Map<String, dynamic> json) ;

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