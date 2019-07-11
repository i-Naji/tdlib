part of '../tdapi.dart';

class StickerEmojis implements TLObject {
  List<String> emojis;
  dynamic extra;

  /// Represents a list of all emoji corresponding to a sticker in a sticker set. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object.
  ///[emojis] List of emojis
  StickerEmojis({this.emojis});

  /// Parse from a json
  StickerEmojis.fromJson(Map<String, dynamic> json) {
    this.emojis = List<String>.from(json['emojis'] ?? []);
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "emojis": this.emojis};
  }

  static const String CONSTRUCTOR = "stickerEmojis";

  @override
  String getConstructor() => CONSTRUCTOR;
}
