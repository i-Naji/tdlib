part of '../tdapi.dart';

class SetStickerSetTitle extends TdFunction {
  /// Sets a sticker set title; for bots only
  const SetStickerSetTitle({
    required this.name,
    required this.title,
  });

  /// [name] Sticker set name
  final String name;

  /// [title] New sticker set title
  final String title;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "title": title,
      "@extra": extra,
    };
  }

  SetStickerSetTitle copyWith({
    String? name,
    String? title,
  }) =>
      SetStickerSetTitle(
        name: name ?? this.name,
        title: title ?? this.title,
      );

  static const CONSTRUCTOR = 'setStickerSetTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}
