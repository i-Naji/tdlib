part of '../tdapi.dart';

class Photo extends TdObject {
  bool hasStickers;
  Minithumbnail minithumbnail;
  List<List<PhotoSize>> sizes;

  /// Describes a photo. 
  /// [hasStickers] True, if stickers were added to the photo. The list of corresponding sticker sets can be received using getAttachedStickerSets. 
  /// [minithumbnail] Photo minithumbnail; may be null. 
  /// [sizes] Available variants of the photo, in different sizes
  Photo({this.hasStickers,
    this.minithumbnail,
    this.sizes});

  /// Parse from a json
  Photo.fromJson(Map<String, dynamic> json)  {
    this.hasStickers = json['has_stickers'];
    this.minithumbnail = Minithumbnail.fromJson(json['minithumbnail'] ?? <String, dynamic>{});
    this.sizes = List<List<PhotoSize>>.from((json['sizes'] ?? []).map((item) => List<PhotoSize>.from((item ?? []).map((innerItem) => PhotoSize.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "has_stickers": this.hasStickers,
      "minithumbnail": this.minithumbnail.toJson(),
      "sizes": this.sizes.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'photo';
}