part of '../tdapi.dart';

class StickerSets implements TLObject {
  int totalCount;
  List<StickerSetInfo> sets;
  dynamic extra;

  /// Represents a list of sticker sets.
  ///[totalCount] Approximate total number of sticker sets found .
  /// [sets] List of sticker sets
  StickerSets({this.totalCount, this.sets});

  /// Parse from a json
  StickerSets.fromJson(Map<String, dynamic> json) {
    this.totalCount = json['total_count'];
    this.sets = (json['sets'] ?? [])
        .map((listValue) => StickerSetInfo.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'total_count': this.totalCount,
      'sets': this.sets.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'stickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
