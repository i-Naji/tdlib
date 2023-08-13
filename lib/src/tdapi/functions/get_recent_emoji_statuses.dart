part of '../tdapi.dart';

class GetRecentEmojiStatuses extends TdFunction {
  /// Returns recent emoji statuses
  const GetRecentEmojiStatuses();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetRecentEmojiStatuses copyWith() => const GetRecentEmojiStatuses();

  static const CONSTRUCTOR = 'getRecentEmojiStatuses';

  @override
  String getConstructor() => CONSTRUCTOR;
}
