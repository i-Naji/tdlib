part of '../tdapi.dart';

class GetUserLink extends TdFunction {
  /// Returns an HTTPS link, which can be used to get information about the current user
  const GetUserLink();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetUserLink copyWith() => const GetUserLink();

  static const CONSTRUCTOR = 'getUserLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
