part of '../tdapi.dart';

class StickerSets extends TdObject {
  int totalCount;
  List<StickerSetInfo> sets;
  dynamic extra;

  /// Represents a list of sticker sets. 
  /// [totalCount] Approximate total number of sticker sets found . 
  /// [sets] List of sticker sets
  StickerSets({this.totalCount,
    this.sets});

  /// Parse from a json
  StickerSets.fromJson(Map<String, dynamic> json)  {
    this.totalCount = json['total_count'];
    this.sets = List<StickerSetInfo>.from((json['sets'] ?? []).map((item) => StickerSetInfo.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "sets": this.sets.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'stickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}