part of '../tdapi.dart';

class AddStickerToSet extends TdFunction {

  /// Adds a new sticker to a set; for bots only. Returns the sticker set
  const AddStickerToSet({
    required this.userId,
    required this.name,
    required this.sticker,
  });
  
  /// [userId] Sticker set owner
  final int userId;

  /// [name] Sticker set name 
  final String name;

  /// [sticker] Sticker to add to the set
  final InputSticker sticker;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "name": name,
      "sticker": sticker.toJson(),
      "@extra": extra,
    };
  }
  
  AddStickerToSet copyWith({
    int? userId,
    String? name,
    InputSticker? sticker,
  }) => AddStickerToSet(
    userId: userId ?? this.userId,
    name: name ?? this.name,
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'addStickerToSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
