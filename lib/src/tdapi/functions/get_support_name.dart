part of '../tdapi.dart';

class GetSupportName extends TdFunction {
  /// Returns localized name of the Telegram support user; for Telegram support only
  const GetSupportName();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetSupportName copyWith() => const GetSupportName();

  static const CONSTRUCTOR = 'getSupportName';

  @override
  String getConstructor() => CONSTRUCTOR;
}
