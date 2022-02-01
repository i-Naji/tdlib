part of '../tdapi.dart';

class ClearRecentStickers extends TdFunction {

  /// Clears the list of recently used stickers
  const ClearRecentStickers({
    required this.isAttached,
  });
  
  /// [isAttached] Pass true to clear the list of stickers recently attached to photo or video files; pass false to clear the list of recently sent stickers
  final bool isAttached;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_attached": isAttached,
      "@extra": extra,
    };
  }
  
  ClearRecentStickers copyWith({
    bool? isAttached,
  }) => ClearRecentStickers(
    isAttached: isAttached ?? this.isAttached,
  );

  static const CONSTRUCTOR = 'clearRecentStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
