part of '../tdapi.dart';

class GetStickers extends TdFunction {
  String emoji;
  int limit;
  dynamic extra;

  /// Returns stickers from the installed sticker sets that correspond to a given emoji. If the emoji is not empty, favorite and recently used stickers may also be returned. 
  /// [emoji] String representation of emoji. If empty, returns all known installed stickers . 
  /// [limit] The maximum number of stickers to be returned
  GetStickers({this.emoji,
    this.limit});

  /// Parse from a json
  GetStickers.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "emoji": this.emoji,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}