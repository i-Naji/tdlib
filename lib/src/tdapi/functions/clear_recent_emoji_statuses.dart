part of '../tdapi.dart';

class ClearRecentEmojiStatuses extends TdFunction {
  /// Clears the list of recently used emoji statuses
  const ClearRecentEmojiStatuses();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  ClearRecentEmojiStatuses copyWith() => const ClearRecentEmojiStatuses();

  static const CONSTRUCTOR = 'clearRecentEmojiStatuses';

  @override
  String getConstructor() => CONSTRUCTOR;
}
