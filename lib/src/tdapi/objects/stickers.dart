part of '../tdapi.dart';

class Stickers implements TLObject {
  List<Sticker> stickers;
  dynamic extra;

  /// Represents a list of stickers.
  ///[stickers] List of stickers
  Stickers({this.stickers});

  /// Parse from a json
  Stickers.fromJson(Map<String, dynamic> json) {
    this.stickers = (json['stickers'] ?? [])
        .map((listValue) => Sticker.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'stickers': this.stickers.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'stickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
