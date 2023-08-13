part of '../tdapi.dart';

class GetDefaultEmojiStatuses extends TdFunction {
  /// Returns default emoji statuses
  const GetDefaultEmojiStatuses();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetDefaultEmojiStatuses copyWith() => const GetDefaultEmojiStatuses();

  static const CONSTRUCTOR = 'getDefaultEmojiStatuses';

  @override
  String getConstructor() => CONSTRUCTOR;
}
