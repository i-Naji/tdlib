part of '../tdapi.dart';

class GetRecentStickers extends TdFunction {

  /// Returns a list of recently used stickers
  const GetRecentStickers({
    required this.isAttached,
  });
  
  /// [isAttached] Pass true to return stickers and masks that were recently attached to photos or video files; pass false to return recently sent stickers
  final bool isAttached;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_attached": isAttached,
      "@extra": extra,
    };
  }
  
  GetRecentStickers copyWith({
    bool? isAttached,
  }) => GetRecentStickers(
    isAttached: isAttached ?? this.isAttached,
  );

  static const CONSTRUCTOR = 'getRecentStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
