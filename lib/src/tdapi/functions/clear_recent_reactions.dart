part of '../tdapi.dart';

class ClearRecentReactions extends TdFunction {
  /// Clears the list of recently used reactions
  const ClearRecentReactions();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  ClearRecentReactions copyWith() => const ClearRecentReactions();

  static const CONSTRUCTOR = 'clearRecentReactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
