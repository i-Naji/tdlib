part of '../tdapi.dart';

class GetInstalledStickerSets extends TdFunction {

  /// Returns a list of installed sticker sets
  const GetInstalledStickerSets({
    required this.isMasks,
  });
  
  /// [isMasks] Pass true to return mask sticker sets; pass false to return ordinary sticker sets
  final bool isMasks;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": isMasks,
      "@extra": extra,
    };
  }
  
  GetInstalledStickerSets copyWith({
    bool? isMasks,
  }) => GetInstalledStickerSets(
    isMasks: isMasks ?? this.isMasks,
  );

  static const CONSTRUCTOR = 'getInstalledStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
