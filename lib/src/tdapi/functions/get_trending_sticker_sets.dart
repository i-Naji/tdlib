part of '../tdapi.dart';

class GetTrendingStickerSets extends TdFunction {
  int offset;
  int limit;
  dynamic extra;

  /// Returns a list of trending sticker sets. For the optimal performance the number of returned sticker sets is chosen by the library. 
  /// [offset] The offset from which to return the sticker sets; must be non-negative. 
  /// [limit] The maximum number of sticker sets to be returned; must be non-negative. Fewer sticker sets may be returned than specified by the limit, even if the end of the list has not been reached
  GetTrendingStickerSets({this.offset,
    this.limit});

  /// Parse from a json
  GetTrendingStickerSets.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "offset": this.offset,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getTrendingStickerSets';
}