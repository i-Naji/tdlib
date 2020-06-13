part of '../tdapi.dart';

class Stickers extends TdObject {
  List<List<Sticker>> stickers;
  dynamic extra;

  /// Represents a list of stickers. 
  /// [stickers] List of stickers
  Stickers({this.stickers});

  /// Parse from a json
  Stickers.fromJson(Map<String, dynamic> json)  {
    this.stickers = List<List<Sticker>>.from((json['stickers'] ?? []).map((item) => List<Sticker>.from((item ?? []).map((innerItem) => Sticker.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "stickers": this.stickers.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'stickers';
}