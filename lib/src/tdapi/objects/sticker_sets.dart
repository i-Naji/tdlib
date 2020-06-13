part of '../tdapi.dart';

class StickerSets extends TdObject {
  int totalCount;
  List<List<StickerSetInfo>> sets;
  dynamic extra;

  /// Represents a list of sticker sets. 
  /// [totalCount] Approximate total number of sticker sets found . 
  /// [sets] List of sticker sets
  StickerSets({this.totalCount,
    this.sets});

  /// Parse from a json
  StickerSets.fromJson(Map<String, dynamic> json)  {
    this.totalCount = json['total_count'];
    this.sets = List<List<StickerSetInfo>>.from((json['sets'] ?? []).map((item) => List<StickerSetInfo>.from((item ?? []).map((innerItem) => StickerSetInfo.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "sets": this.sets.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'stickerSets';
}