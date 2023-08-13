part of '../tdapi.dart';

class GetCloseFriends extends TdFunction {
  /// Returns all close friends of the current user
  const GetCloseFriends();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetCloseFriends copyWith() => const GetCloseFriends();

  static const CONSTRUCTOR = 'getCloseFriends';

  @override
  String getConstructor() => CONSTRUCTOR;
}
