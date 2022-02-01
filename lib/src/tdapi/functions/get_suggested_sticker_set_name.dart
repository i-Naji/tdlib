part of '../tdapi.dart';

class GetSuggestedStickerSetName extends TdFunction {

  /// Returns a suggested name for a new sticker set with a given title
  const GetSuggestedStickerSetName({
    required this.title,
  });
  
  /// [title] Sticker set title; 1-64 characters
  final String title;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "@extra": extra,
    };
  }
  
  GetSuggestedStickerSetName copyWith({
    String? title,
  }) => GetSuggestedStickerSetName(
    title: title ?? this.title,
  );

  static const CONSTRUCTOR = 'getSuggestedStickerSetName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
