part of '../tdapi.dart';

class Stickers extends TdObject {
  List<Sticker> stickers;
  dynamic extra;

  /// Represents a list of stickers. 
  /// [stickers] List of stickers
  Stickers({this.stickers});

  /// Parse from a json
  Stickers.fromJson(Map<String, dynamic> json)  {
    this.stickers = List<Sticker>.from((json['stickers'] ?? []).map((item) => Sticker.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "stickers": this.stickers.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'stickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}