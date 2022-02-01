part of '../tdapi.dart';

class DiceStickers extends TdObject {

  /// Contains animated stickers which must be used for dice animation rendering
  const DiceStickers();
  
  /// a DiceStickers return type can be :
  /// * [DiceStickersRegular]
  /// * [DiceStickersSlotMachine]
  factory DiceStickers.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case DiceStickersRegular.CONSTRUCTOR:
        return DiceStickersRegular.fromJson(json);
      case DiceStickersSlotMachine.CONSTRUCTOR:
        return DiceStickersSlotMachine.fromJson(json);
      default:
        return const DiceStickers();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  DiceStickers copyWith() => const DiceStickers();

  static const CONSTRUCTOR = 'diceStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class DiceStickersRegular extends DiceStickers {

  /// A regular animated sticker
  const DiceStickersRegular({
    required this.sticker,
  });
  
  /// [sticker] The animated sticker with the dice animation
  final Sticker sticker;
  
  /// Parse from a json
  factory DiceStickersRegular.fromJson(Map<String, dynamic> json) => DiceStickersRegular(
    sticker: Sticker.fromJson(json['sticker']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
    };
  }
  
  @override
  DiceStickersRegular copyWith({
    Sticker? sticker,
  }) => DiceStickersRegular(
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'diceStickersRegular';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class DiceStickersSlotMachine extends DiceStickers {

  /// Animated stickers to be combined into a slot machine
  const DiceStickersSlotMachine({
    required this.background,
    required this.lever,
    required this.leftReel,
    required this.centerReel,
    required this.rightReel,
  });
  
  /// [background] The animated sticker with the slot machine background. The background animation must start playing after all reel animations finish
  final Sticker background;

  /// [lever] The animated sticker with the lever animation. The lever animation must play once in the initial dice state
  final Sticker lever;

  /// [leftReel] The animated sticker with the left reel
  final Sticker leftReel;

  /// [centerReel] The animated sticker with the center reel
  final Sticker centerReel;

  /// [rightReel] The animated sticker with the right reel
  final Sticker rightReel;
  
  /// Parse from a json
  factory DiceStickersSlotMachine.fromJson(Map<String, dynamic> json) => DiceStickersSlotMachine(
    background: Sticker.fromJson(json['background']),
    lever: Sticker.fromJson(json['lever']),
    leftReel: Sticker.fromJson(json['left_reel']),
    centerReel: Sticker.fromJson(json['center_reel']),
    rightReel: Sticker.fromJson(json['right_reel']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "background": background.toJson(),
      "lever": lever.toJson(),
      "left_reel": leftReel.toJson(),
      "center_reel": centerReel.toJson(),
      "right_reel": rightReel.toJson(),
    };
  }
  
  @override
  DiceStickersSlotMachine copyWith({
    Sticker? background,
    Sticker? lever,
    Sticker? leftReel,
    Sticker? centerReel,
    Sticker? rightReel,
  }) => DiceStickersSlotMachine(
    background: background ?? this.background,
    lever: lever ?? this.lever,
    leftReel: leftReel ?? this.leftReel,
    centerReel: centerReel ?? this.centerReel,
    rightReel: rightReel ?? this.rightReel,
  );

  static const CONSTRUCTOR = 'diceStickersSlotMachine';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
