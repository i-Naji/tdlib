part of '../tdapi.dart';

class GetForumTopicDefaultIcons extends TdFunction {
  /// Returns list of custom emojis, which can be used as forum topic icon by all users
  const GetForumTopicDefaultIcons();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetForumTopicDefaultIcons copyWith() => const GetForumTopicDefaultIcons();

  static const CONSTRUCTOR = 'getForumTopicDefaultIcons';

  @override
  String getConstructor() => CONSTRUCTOR;
}
