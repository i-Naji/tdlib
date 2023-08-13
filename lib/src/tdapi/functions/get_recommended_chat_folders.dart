part of '../tdapi.dart';

class GetRecommendedChatFolders extends TdFunction {
  /// Returns recommended chat folders for the current user
  const GetRecommendedChatFolders();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetRecommendedChatFolders copyWith() => const GetRecommendedChatFolders();

  static const CONSTRUCTOR = 'getRecommendedChatFolders';

  @override
  String getConstructor() => CONSTRUCTOR;
}
