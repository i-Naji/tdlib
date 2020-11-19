part of '../tdapi.dart';

class DiceStickers extends TdObject {
  /// Contains animated stickers which should be used for dice animation rendering
  DiceStickers();

  /// a DiceStickers return type can be :
  /// * DiceStickersRegular
  /// * DiceStickersSlotMachine
  factory DiceStickers.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case DiceStickersRegular.CONSTRUCTOR:
        return DiceStickersRegular.fromJson(json);
      case DiceStickersSlotMachine.CONSTRUCTOR:
        return DiceStickersSlotMachine.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'diceStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class DiceStickersRegular extends DiceStickers {
  /// A regular animated sticker
  DiceStickersRegular({this.sticker});

  /// [sticker] The animated sticker with the dice animation
  Sticker sticker;

  /// Parse from a json
  DiceStickersRegular.fromJson(Map<String, dynamic> json) {
    this.sticker = Sticker.fromJson(json['sticker'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker == null ? null : this.sticker.toJson(),
    };
  }

  static const CONSTRUCTOR = 'diceStickersRegular';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class DiceStickersSlotMachine extends DiceStickers {
  /// Animated stickers to be combined into a slot machine
  DiceStickersSlotMachine(
      {this.background,
      this.lever,
      this.leftReel,
      this.centerReel,
      this.rightReel});

  /// [background] The animated sticker with the slot machine background. The background animation must start playing after all reel animations finish
  Sticker background;

  /// [lever] The animated sticker with the lever animation. The lever animation must play once in the initial dice state
  Sticker lever;

  /// [leftReel] The animated sticker with the left reel
  Sticker leftReel;

  /// [centerReel] The animated sticker with the center reel
  Sticker centerReel;

  /// [rightReel] The animated sticker with the right reel
  Sticker rightReel;

  /// Parse from a json
  DiceStickersSlotMachine.fromJson(Map<String, dynamic> json) {
    this.background =
        Sticker.fromJson(json['background'] ?? <String, dynamic>{});
    this.lever = Sticker.fromJson(json['lever'] ?? <String, dynamic>{});
    this.leftReel = Sticker.fromJson(json['left_reel'] ?? <String, dynamic>{});
    this.centerReel =
        Sticker.fromJson(json['center_reel'] ?? <String, dynamic>{});
    this.rightReel =
        Sticker.fromJson(json['right_reel'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "background": this.background == null ? null : this.background.toJson(),
      "lever": this.lever == null ? null : this.lever.toJson(),
      "left_reel": this.leftReel == null ? null : this.leftReel.toJson(),
      "center_reel": this.centerReel == null ? null : this.centerReel.toJson(),
      "right_reel": this.rightReel == null ? null : this.rightReel.toJson(),
    };
  }

  static const CONSTRUCTOR = 'diceStickersSlotMachine';

  @override
  String getConstructor() => CONSTRUCTOR;
}
